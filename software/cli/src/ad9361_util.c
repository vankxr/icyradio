#include "ad9361_util.h"

uint32_t ad9361_clk_get_rate(struct ad9361_rf_phy* phy, struct refclk_scale* clk_priv)
{
    uint32_t rate = 0;
    uint32_t source;

    source = clk_priv->source;

    switch(source)
    {
        case TX_REFCLK:
        case RX_REFCLK:
        case BB_REFCLK:
            rate = ad9361_clk_factor_recalc_rate(clk_priv, phy->clk_refin->rate);
        break;
        case TX_RFPLL_INT:
        case RX_RFPLL_INT:
            rate = ad9361_rfpll_int_recalc_rate(clk_priv, phy->clks[clk_priv->parent_source]->rate);
        break;
        case RX_RFPLL_DUMMY:
        case TX_RFPLL_DUMMY:
            rate = ad9361_rfpll_dummy_recalc_rate(clk_priv);
        break;
        case TX_RFPLL:
        case RX_RFPLL:
            rate = ad9361_rfpll_recalc_rate(clk_priv);
        break;
        case BBPLL_CLK:
            rate = ad9361_bbpll_recalc_rate(clk_priv, phy->clks[clk_priv->parent_source]->rate);
        break;
        case ADC_CLK:
        case R2_CLK:
        case R1_CLK:
        case CLKRF_CLK:
        case RX_SAMPL_CLK:
        case DAC_CLK:
        case T2_CLK:
        case T1_CLK:
        case CLKTF_CLK:
        case TX_SAMPL_CLK:
            rate = ad9361_clk_factor_recalc_rate(clk_priv, phy->clks[clk_priv->parent_source]->rate);
        break;
    }

    return rate;
}
int32_t ad9361_clk_set_rate(struct ad9361_rf_phy* phy, struct refclk_scale* clk_priv, uint32_t rate)
{
    uint32_t source;
    uint32_t round_rate;

    source = clk_priv->source;

    if(phy->clks[source]->rate != rate)
    {
        switch(source)
        {
            case TX_REFCLK:
            case RX_REFCLK:
            case BB_REFCLK:
                round_rate = ad9361_clk_factor_round_rate(clk_priv, rate, &phy->clk_refin->rate);

                ad9361_clk_factor_set_rate(clk_priv, round_rate, phy->clk_refin->rate);

                phy->clks[source]->rate = ad9361_clk_factor_recalc_rate(clk_priv, phy->clk_refin->rate);
            break;
            case TX_RFPLL_INT:
            case RX_RFPLL_INT:
                round_rate = ad9361_rfpll_int_round_rate(clk_priv, rate, &phy->clks[clk_priv->parent_source]->rate);

                ad9361_rfpll_int_set_rate(clk_priv, round_rate, phy->clks[clk_priv->parent_source]->rate);

                phy->clks[source]->rate = ad9361_rfpll_int_recalc_rate(clk_priv, phy->clks[clk_priv->parent_source]->rate);
            break;
            case RX_RFPLL_DUMMY:
            case TX_RFPLL_DUMMY:
                ad9361_rfpll_dummy_set_rate(clk_priv, rate);
            break;
            case TX_RFPLL:
            case RX_RFPLL:
                round_rate = ad9361_rfpll_round_rate(clk_priv, rate);

                ad9361_rfpll_set_rate(clk_priv, round_rate);

                phy->clks[source]->rate = ad9361_rfpll_recalc_rate(clk_priv);
            break;
            case BBPLL_CLK:
                round_rate = ad9361_bbpll_round_rate(clk_priv, rate,&phy->clks[clk_priv->parent_source]->rate);

                ad9361_bbpll_set_rate(clk_priv, round_rate, phy->clks[clk_priv->parent_source]->rate);

                phy->clks[source]->rate = ad9361_bbpll_recalc_rate(clk_priv, phy->clks[clk_priv->parent_source]->rate);

                phy->bbpll_initialized = true;
            break;
            case ADC_CLK:
            case R2_CLK:
            case R1_CLK:
            case CLKRF_CLK:
            case RX_SAMPL_CLK:
            case DAC_CLK:
            case T2_CLK:
            case T1_CLK:
            case CLKTF_CLK:
            case TX_SAMPL_CLK:
                round_rate = ad9361_clk_factor_round_rate(clk_priv, rate, &phy->clks[clk_priv->parent_source]->rate);

                ad9361_clk_factor_set_rate(clk_priv, round_rate, phy->clks[clk_priv->parent_source]->rate);

                phy->clks[source]->rate = ad9361_clk_factor_recalc_rate(clk_priv, phy->clks[clk_priv->parent_source]->rate);
            break;
        }

        for(enum ad9361_clocks i = BB_REFCLK; i < BBPLL_CLK; i++)
            phy->clks[i]->rate = ad9361_clk_factor_recalc_rate(phy->ref_clk_scale[i], phy->clk_refin->rate);

        phy->clks[BBPLL_CLK]->rate = ad9361_bbpll_recalc_rate(phy->ref_clk_scale[BBPLL_CLK], phy->clks[phy->ref_clk_scale[BBPLL_CLK]->parent_source]->rate);

        for(enum ad9361_clocks i = ADC_CLK; i < RX_RFPLL_INT; i++)
            phy->clks[i]->rate = ad9361_clk_factor_recalc_rate(phy->ref_clk_scale[i], phy->clks[phy->ref_clk_scale[i]->parent_source]->rate);

        for(enum ad9361_clocks i = RX_RFPLL_INT; i < RX_RFPLL_DUMMY; i++)
            phy->clks[i]->rate = ad9361_rfpll_int_recalc_rate(phy->ref_clk_scale[i], phy->clks[phy->ref_clk_scale[i]->parent_source]->rate);

        for(enum ad9361_clocks i = RX_RFPLL_DUMMY; i < RX_RFPLL; i++)
            phy->clks[i]->rate = ad9361_rfpll_dummy_recalc_rate(phy->ref_clk_scale[i]);

        for(enum ad9361_clocks i = RX_RFPLL; i < NUM_AD9361_CLKS; i++)
            phy->clks[i]->rate = ad9361_rfpll_recalc_rate(phy->ref_clk_scale[i]);
    }
    else
    {
        if((source == BBPLL_CLK) && !phy->bbpll_initialized)
        {
            round_rate = ad9361_bbpll_round_rate(clk_priv, rate, &phy->clks[clk_priv->parent_source]->rate);

            ad9361_bbpll_set_rate(clk_priv, round_rate, phy->clks[clk_priv->parent_source]->rate);

            phy->clks[source]->rate = ad9361_bbpll_recalc_rate(clk_priv, phy->clks[clk_priv->parent_source]->rate);

            phy->bbpll_initialized = true;
        }
    }

    return 0;
}
