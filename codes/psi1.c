#include "udf.h"

DEFINE_PROFILE(psi1_x, t, i)
{
  face_t f;
  cell_t c0;
  Thread *t0 = THREAD_T0(t);
  
  real xw[ND_ND];
  real xc[ND_ND];
  real cw[ND_ND];
  real  v[ND_ND];
  real vcf[ND_ND];
  real vwall;
  real cwcw;
  real vcw;
  real prod;
  real yw;
  real tauw;
  real wallshear;
  real us; 
  real yplus;
  real k;
  
  real consin;
  real behvin;
  real yields;
  real seemew;
  real emod;
  real kappa;
  real invbehvin;

  consin = 0.032839;
  behvin = 0.604314;
  yields = 0.158526;
  seemew = 0.09;
  emod   = 9.793;
  kappa  = 0.4187;

  invbehvin = 1./behvin;
  
  begin_f_loop(f, t) 
  {
  c0 = F_C0(f,t);
  F_CENTROID(xw,f,t);
  C_CENTROID(xc,c0,t0);

  NV_VV(cw, =, xc, - , xw);
  yw = NV_MAG(cw);

  cwcw = NV_DOT(cw,cw);
  v[0] = C_U(c0,t0); v[1] = C_V(c0,t0); v[2] = C_W(c0,t0);
  vcw  = NV_DOT(v,cw);
  prod = vcw/cwcw;

  NV_V_VS(vcf, =, v, -, cw, *, prod);
  vwall = NV_MAG(vcf);
  
  wallshear = pow(seemew,0.5)*C_K(c0,t0)*C_R(c0,t0);
  yplus     = ( pow(yw,behvin)*C_R(c0,t0)*pow((wallshear - yields)/C_R(c0,t0),0.5*(2-behvin)) )/consin;

  us        = log(emod*yplus)/(kappa*behvin);
  tauw      = yields + C_R(c0,t0)*pow(vwall/us,2);

  tauw      = (tauw/vwall)*vcf[0];

  F_PROFILE(f, t, i) = tauw; 
  }
  end_f_loop(f, t)
}

DEFINE_PROFILE(psi1_y, t, i)
{
  face_t f;
  cell_t c0;
  Thread *t0 = THREAD_T0(t);
  
  real xw[ND_ND];
  real xc[ND_ND];
  real cw[ND_ND];
  real  v[ND_ND];
  real vcf[ND_ND];
  real vwall;
  real cwcw;
  real vcw;
  real prod;
  real yw;
  real tauw;
  real wallshear;
  real us; 
  real yplus;
  real k;
  
  real consin;
  real behvin;
  real yields;
  real seemew;
  real emod;
  real kappa;
  real invbehvin;

  consin = 0.032839;
  behvin = 0.604314;
  yields = 0.158526;
  seemew = 0.09;
  emod   = 9.793;
  kappa  = 0.4187;

  invbehvin = 1./behvin;
  
  begin_f_loop(f, t) 
  {
  c0 = F_C0(f,t);
  F_CENTROID(xw,f,t);
  C_CENTROID(xc,c0,t0);

  NV_VV(cw, =, xc, - , xw);
  yw = NV_MAG(cw);

  cwcw = NV_DOT(cw,cw);
  v[0] = C_U(c0,t0); v[1] = C_V(c0,t0); v[2] = C_W(c0,t0);
  vcw  = NV_DOT(v,cw);
  prod = vcw/cwcw;

  NV_V_VS(vcf, =, v, -, cw, *, prod);
  vwall = NV_MAG(vcf);
  
  wallshear = pow(seemew,0.5)*C_K(c0,t0)*C_R(c0,t0);
  yplus     = ( pow(yw,behvin)*C_R(c0,t0)*pow((wallshear - yields)/C_R(c0,t0),0.5*(2-behvin)) )/consin;

  us        = log(emod*yplus)/(kappa*behvin);
  tauw      = yields + C_R(c0,t0)*pow(vwall/us,2);

  tauw      = (tauw/vwall)*vcf[1];

  F_PROFILE(f, t, i) = tauw; 
  }
  end_f_loop(f, t)
}

DEFINE_PROFILE(psi1_z, t, i)
{
  face_t f;
  cell_t c0;
  Thread *t0 = THREAD_T0(t);
  
  real xw[ND_ND];
  real xc[ND_ND];
  real cw[ND_ND];
  real  v[ND_ND];
  real vcf[ND_ND];
  real vwall;
  real cwcw;
  real vcw;
  real prod;
  real yw;
  real tauw;
  real wallshear;
  real us; 
  real yplus;
  real k;
  
  real consin;
  real behvin;
  real yields;
  real seemew;
  real emod;
  real kappa;
  real invbehvin;

  consin = 0.032839;
  behvin = 0.604314;
  yields = 0.158526;
  seemew = 0.09;
  emod   = 9.793;
  kappa  = 0.4187;

  invbehvin = 1./behvin;
  
  begin_f_loop(f, t) 
  {
  c0 = F_C0(f,t);
  F_CENTROID(xw,f,t);
  C_CENTROID(xc,c0,t0);

  NV_VV(cw, =, xc, - , xw);
  yw = NV_MAG(cw);

  cwcw = NV_DOT(cw,cw);
  v[0] = C_U(c0,t0); v[1] = C_V(c0,t0); v[2] = C_W(c0,t0);
  vcw  = NV_DOT(v,cw);
  prod = vcw/cwcw;

  NV_V_VS(vcf, =, v, -, cw, *, prod);
  vwall = NV_MAG(vcf);
  
  wallshear = pow(seemew,0.5)*C_K(c0,t0)*C_R(c0,t0);
  yplus     = ( pow(yw,behvin)*C_R(c0,t0)*pow((wallshear - yields)/C_R(c0,t0),0.5*(2-behvin)) )/consin;

  us        = log(emod*yplus)/(kappa*behvin);
  tauw      = yields + C_R(c0,t0)*pow(vwall/us,2);

  tauw      = (tauw/vwall)*vcf[2];

  F_PROFILE(f, t, i) = tauw; 
  }
  end_f_loop(f, t)
}