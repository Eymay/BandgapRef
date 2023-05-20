# Bandgap Reference Circuit
Bandgap Reference Circuit providing stable voltage and current for a wide range of temperature conditions.

![](res/bandgap_sch.png)

Currents passing through pnp transistors. Note that $V_{Q1_{E}} = V_x$ and $V_{Q2_{E}} + V_{R_1} = V_y$
$$I_{Q1_{E}} = \frac{I_S}{\alpha_F} exp(\frac{V_{Q1_{E}}}{V_{T}})$$
$$I_{Q2_{E}} = \frac{I_S}{\alpha_F} exp(\frac{V_{Q2_{E}}}{V_{T}})$$
$$V_{Q1_{E}} - V_{Q2_{E}} = \frac{kT}{q} ln(N)$$
As the op-amp is bringing its two input voltages closer together, making $V_x = V_y$ and so $V_{Q1_{E}} = V_y$
$$\frac{V_y - V_{Q2_{E}}}{R_1} = I_{Q2_{E}} = I_{Q1_{E}} = \frac{kT}{q} \frac{1}{R_1} ln(N)$$
 
Currents pushed from $M_3$ and $M_4$ pmos transistors.
$$I_1 = I_2 = \frac{V_1}{R_1} + \frac{kT}{q} \frac{1}{R_E} ln(N)$$
$$V_{BG} = S(\underbrace{\frac{R_4}{R_2} V_x}_{CTAT} + \underbrace{\frac{kT}{q} \frac{R_4}{R_E} ln(N)}_{PTAT})$$

## Reference Voltage
