<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Nexvoya Logistics — Global Shipment &amp; Commerce Platform</title>
<link href="https://fonts.googleapis.com/css2?family=Syne:wght@400;600;700;800&family=Inter:wght@300;400;500;600&family=JetBrains+Mono:wght@400;500&display=swap" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.min.js"></script>
<style>
*,*::before,*::after{box-sizing:border-box;margin:0;padding:0}
:root{
  --navy:#0A0F1E;--steel:#0E1525;--panel:#111827;--card:#141E33;--card2:#1A2540;
  --border:#1E2D4A;--border2:#243558;
  --teal:#00D4B8;--teal2:#00A896;--teal-glow:rgba(0,212,184,.12);
  --amber:#F59E0B;--red:#EF4444;--green:#10B981;--purple:#8B5CF6;--blue:#3B82F6;
  --gold:#FFD700;
  --slate:#94A3B8;--light:#CBD5E1;--white:#F8FAFC;
  --ff-disp:'Syne',sans-serif;--ff-body:'Inter',sans-serif;--ff-mono:'JetBrains Mono',monospace;
}
html{scroll-behavior:smooth}
body{background:var(--navy);color:var(--light);font-family:var(--ff-body);font-size:14px;line-height:1.6;overflow-x:hidden}

/* ═══ SCROLLBAR ═══ */
::-webkit-scrollbar{width:5px}
::-webkit-scrollbar-track{background:var(--navy)}
::-webkit-scrollbar-thumb{background:var(--border2);border-radius:3px}

/* ═══ NAV ═══ */
nav{
  position:fixed;top:0;left:0;right:0;z-index:200;
  display:flex;align-items:center;justify-content:space-between;
  padding:0 40px;height:62px;
  background:rgba(10,15,30,.92);backdrop-filter:blur(16px);
  border-bottom:1px solid var(--border);
}
.nav-logo{display:flex;align-items:center;gap:10px;font-family:var(--ff-disp);font-size:19px;font-weight:800;color:var(--white);letter-spacing:-.3px;cursor:pointer}
.nav-logo-icon{width:32px;height:32px;background:var(--teal);border-radius:8px;display:flex;align-items:center;justify-content:center;font-size:15px}
.nav-logo span{color:var(--teal)}
.nav-links{display:flex;align-items:center;gap:6px}
.nav-links a{color:var(--slate);text-decoration:none;font-size:13px;padding:6px 12px;border-radius:6px;transition:all .2s;white-space:nowrap}
.nav-links a:hover{color:var(--white);background:rgba(255,255,255,.05)}
.nav-live{display:flex;align-items:center;gap:6px;background:rgba(0,212,184,.1);border:1px solid rgba(0,212,184,.25);color:var(--teal);padding:5px 12px;border-radius:20px;font-size:12px;font-weight:500}
.pdot{width:6px;height:6px;border-radius:50%;background:var(--teal);animation:pulse 2s infinite}
@keyframes pulse{0%,100%{opacity:1;transform:scale(1)}50%{opacity:.4;transform:scale(1.6)}}

/* ═══ HERO ═══ */
.hero{
  padding-top:62px;min-height:100vh;
  display:grid;grid-template-columns:1fr 1fr;
  background:radial-gradient(ellipse 80% 60% at 70% 40%,rgba(0,212,184,.06) 0%,transparent 60%);
  position:relative;overflow:hidden;
}
.hero::before{
  content:'';position:absolute;inset:0;
  background:url("data:image/svg+xml,%3Csvg width='60' height='60' xmlns='http://www.w3.org/2000/svg'%3E%3Cdefs%3E%3Cpattern id='g' width='60' height='60' patternUnits='userSpaceOnUse'%3E%3Ccircle cx='30' cy='30' r='.6' fill='%2300D4B8' opacity='.12'/%3E%3C/pattern%3E%3C/defs%3E%3Crect width='100%25' height='100%25' fill='url(%23g)'/%3E%3C/svg%3E");
  pointer-events:none;
}
.hero-left{display:flex;flex-direction:column;justify-content:center;padding:80px 48px;position:relative;z-index:1}
.eyebrow{display:inline-flex;align-items:center;gap:8px;font-family:var(--ff-mono);font-size:11px;font-weight:500;color:var(--teal);letter-spacing:2px;text-transform:uppercase;margin-bottom:22px}
.eyebrow::before{content:'';display:block;width:24px;height:1px;background:var(--teal)}
h1{font-family:var(--ff-disp);font-size:clamp(34px,4vw,58px);font-weight:800;line-height:1.06;letter-spacing:-1.5px;color:var(--white);margin-bottom:22px}
h1 em{font-style:normal;color:var(--teal)}
.hero-sub{font-size:16px;color:var(--slate);max-width:460px;line-height:1.75;margin-bottom:36px}
.hero-btns{display:flex;gap:12px;flex-wrap:wrap}
.btn-p{background:var(--teal);color:var(--navy);padding:13px 26px;border-radius:8px;font-size:14px;font-weight:700;border:none;cursor:pointer;transition:all .2s;text-decoration:none;display:inline-flex;align-items:center;gap:8px}
.btn-p:hover{background:#00bda6;transform:translateY(-1px);box-shadow:0 8px 24px rgba(0,212,184,.25)}
.btn-o{background:transparent;color:var(--white);padding:12px 26px;border-radius:8px;font-size:14px;font-weight:500;border:1px solid var(--border2);cursor:pointer;transition:all .2s;text-decoration:none;display:inline-flex;align-items:center;gap:8px}
.btn-o:hover{border-color:var(--teal);color:var(--teal)}
.hero-stats{display:flex;gap:40px;margin-top:52px;padding-top:36px;border-top:1px solid var(--border)}
.hs-val{font-family:var(--ff-disp);font-size:28px;font-weight:800;color:var(--white);line-height:1}
.hs-val span{color:var(--teal)}
.hs-lbl{font-size:12px;color:var(--slate);margin-top:4px}
.hero-right{position:relative;background:var(--panel);border-left:1px solid var(--border);display:flex;align-items:center;justify-content:center;overflow:hidden}
canvas#globe{width:340px;height:340px}
.rb{position:absolute;background:rgba(20,30,51,.95);border:1px solid var(--border2);border-radius:10px;padding:10px 14px;display:flex;align-items:center;gap:10px;font-size:12px;backdrop-filter:blur(8px);animation:float 6s ease-in-out infinite}
.rb:nth-child(2){top:18%;left:3%;animation-delay:0s}
.rb:nth-child(3){top:58%;right:3%;animation-delay:2s}
.rb:nth-child(4){bottom:14%;left:8%;animation-delay:4s}
@keyframes float{0%,100%{transform:translateY(0)}50%{transform:translateY(-8px)}}
.rb-dot{width:8px;height:8px;border-radius:50%;flex-shrink:0}
.rb-r{font-weight:600;color:var(--white);font-size:12px}
.rb-s{font-size:11px;color:var(--slate)}

/* ═══ SECTION SHELLS ═══ */
section.sec{padding:88px 48px;position:relative;border-top:1px solid var(--border)}
.sec-num{position:absolute;top:32px;right:48px;font-family:var(--ff-disp);font-size:88px;font-weight:800;color:rgba(255,255,255,.025);line-height:1;letter-spacing:-3px;pointer-events:none;user-select:none}
@media(max-width:900px){.sec-num{display:none}}
.sec-hdr{display:flex;align-items:flex-end;justify-content:space-between;margin-bottom:44px}
.sec-hdr-l{}
.sec-ey{font-family:var(--ff-mono);font-size:11px;color:var(--teal);letter-spacing:2px;text-transform:uppercase;margin-bottom:8px}
h2{font-family:var(--ff-disp);font-size:clamp(22px,2.5vw,30px);font-weight:700;color:var(--white);letter-spacing:-.5px}
.sec-act{font-size:13px;color:var(--teal);cursor:pointer;text-decoration:none;display:flex;align-items:center;gap:4px;padding-bottom:2px;border-bottom:1px solid transparent;transition:border-color .2s}
.sec-act:hover{border-color:var(--teal)}

/* ═══ STORE TABS ═══ */
.store-tabs{display:flex;gap:6px;margin-bottom:32px;flex-wrap:wrap}
.stab{background:var(--card);border:1px solid var(--border);color:var(--slate);padding:9px 20px;border-radius:8px;font-size:13px;font-weight:500;cursor:pointer;transition:all .2s}
.stab.active,.stab:hover{background:var(--teal);color:var(--navy);border-color:var(--teal);font-weight:700}

/* ═══ PRODUCT GRID ═══ */
.prod-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:16px}
.prod-card{background:var(--card);border:1px solid var(--border);border-radius:14px;overflow:hidden;transition:all .25s;cursor:pointer;position:relative}
.prod-card:hover{border-color:rgba(0,212,184,.4);transform:translateY(-4px);box-shadow:0 20px 48px rgba(0,0,0,.35)}
.prod-thumb{height:130px;display:flex;align-items:center;justify-content:center;font-size:48px;position:relative;overflow:hidden}
.prod-badge{position:absolute;top:10px;right:10px;font-family:var(--ff-mono);font-size:10px;font-weight:500;padding:3px 8px;border-radius:20px}
.badge-new{background:rgba(0,212,184,.15);color:var(--teal);border:1px solid rgba(0,212,184,.3)}
.badge-hot{background:rgba(239,68,68,.15);color:var(--red);border:1px solid rgba(239,68,68,.3)}
.badge-dig{background:rgba(139,92,246,.15);color:var(--purple);border:1px solid rgba(139,92,246,.3)}
.badge-bk{background:rgba(245,158,11,.15);color:var(--amber);border:1px solid rgba(245,158,11,.3)}
.prod-body{padding:16px}
.prod-cat{font-family:var(--ff-mono);font-size:10px;color:var(--slate);letter-spacing:1.5px;text-transform:uppercase;margin-bottom:5px}
.prod-name{font-family:var(--ff-disp);font-size:15px;font-weight:700;color:var(--white);margin-bottom:6px;line-height:1.3}
.prod-desc{font-size:12px;color:var(--slate);line-height:1.5;margin-bottom:12px}
.prod-foot{display:flex;align-items:center;justify-content:space-between}
.prod-price{font-family:var(--ff-disp);font-size:16px;font-weight:800;color:var(--teal)}
.prod-price small{font-size:11px;color:var(--slate);font-family:var(--ff-body);font-weight:400}
.add-btn{background:var(--teal);color:var(--navy);border:none;padding:7px 14px;border-radius:6px;font-size:12px;font-weight:700;cursor:pointer;transition:all .2s}
.add-btn:hover{background:#00bda6;transform:scale(1.04)}

/* ═══ PRICING LEVELS ═══ */
.pricing-wrap{overflow-x:auto;padding-bottom:8px}
.pricing-track{display:flex;gap:12px;min-width:max-content;padding:4px}
.price-lvl{background:var(--card);border:1px solid var(--border);border-radius:12px;padding:22px 18px;width:178px;flex-shrink:0;position:relative;transition:all .25s;cursor:pointer}
.price-lvl:hover{border-color:rgba(0,212,184,.4);transform:translateY(-3px)}
.price-lvl.featured{border-color:var(--teal);background:linear-gradient(145deg,#142038,#0e1a30)}
.price-lvl.featured::before{content:'POPULAR';position:absolute;top:-10px;left:50%;transform:translateX(-50%);background:var(--teal);color:var(--navy);font-size:9px;font-weight:700;padding:2px 10px;border-radius:20px;letter-spacing:1px;white-space:nowrap}
.lvl-num{font-family:var(--ff-mono);font-size:10px;color:var(--slate);letter-spacing:1.5px;margin-bottom:8px}
.lvl-name{font-family:var(--ff-disp);font-size:14px;font-weight:700;color:var(--white);margin-bottom:12px;line-height:1.2}
.lvl-price{font-family:var(--ff-disp);font-size:22px;font-weight:800;color:var(--teal);margin-bottom:4px}
.lvl-price span{font-size:12px;color:var(--slate);font-family:var(--ff-body);font-weight:400}
.lvl-features{list-style:none;margin-top:14px;display:flex;flex-direction:column;gap:7px}
.lvl-features li{font-size:11px;color:var(--slate);display:flex;align-items:flex-start;gap:6px}
.lvl-features li::before{content:'✓';color:var(--teal);font-weight:700;flex-shrink:0}
.lvl-btn{width:100%;margin-top:16px;background:rgba(0,212,184,.1);color:var(--teal);border:1px solid rgba(0,212,184,.25);padding:8px;border-radius:7px;font-size:12px;font-weight:600;cursor:pointer;transition:all .2s}
.lvl-btn:hover,.price-lvl.featured .lvl-btn{background:var(--teal);color:var(--navy)}

/* ═══ PAYMENT SECTION ═══ */
.pay-grid{display:grid;grid-template-columns:repeat(2,1fr);gap:16px;margin-top:0}
.pay-card{background:var(--card);border:1px solid var(--border);border-radius:14px;padding:28px;transition:all .25s;position:relative;overflow:hidden}
.pay-card::before{content:'';position:absolute;top:0;left:0;right:0;height:3px}
.pay-card.bank::before{background:linear-gradient(90deg,var(--blue),#1d4ed8)}
.pay-card.crypto::before{background:linear-gradient(90deg,var(--amber),#d97706)}
.pay-card.card::before{background:linear-gradient(90deg,var(--teal),var(--teal2))}
.pay-card.debit::before{background:linear-gradient(90deg,var(--purple),#7c3aed)}
.pay-card:hover{border-color:rgba(0,212,184,.3);transform:translateY(-2px)}
.pay-icon{width:52px;height:52px;border-radius:12px;display:flex;align-items:center;justify-content:center;font-size:24px;margin-bottom:18px}
.pay-card.bank .pay-icon{background:rgba(59,130,246,.12)}
.pay-card.crypto .pay-icon{background:rgba(245,158,11,.12)}
.pay-card.card .pay-icon{background:rgba(0,212,184,.12)}
.pay-card.debit .pay-icon{background:rgba(139,92,246,.12)}
.pay-title{font-family:var(--ff-disp);font-size:18px;font-weight:700;color:var(--white);margin-bottom:8px}
.pay-desc{font-size:13px;color:var(--slate);line-height:1.65;margin-bottom:20px}
.pay-detail{background:var(--card2);border:1px solid var(--border);border-radius:10px;padding:16px;margin-bottom:16px}
.pay-detail-row{display:flex;align-items:center;justify-content:space-between;margin-bottom:8px;font-size:12px}
.pay-detail-row:last-child{margin-bottom:0}
.pd-lbl{color:var(--slate)}
.pd-val{font-family:var(--ff-mono);color:var(--white);font-size:11px}
.pay-networks{display:flex;gap:8px;flex-wrap:wrap}
.pay-net{background:var(--card2);border:1px solid var(--border);border-radius:6px;padding:4px 10px;font-size:11px;color:var(--light);display:flex;align-items:center;gap:5px}
.pay-form{margin-top:18px}
.pay-form label{display:block;font-size:12px;color:var(--slate);margin-bottom:6px;margin-top:14px}
.pay-form label:first-child{margin-top:0}
.pay-input{width:100%;background:var(--card2);border:1px solid var(--border2);color:var(--white);padding:10px 14px;border-radius:8px;font-size:13px;font-family:var(--ff-body);outline:none;transition:border-color .2s}
.pay-input:focus{border-color:var(--teal)}
.pay-input::placeholder{color:var(--slate)}
.pay-row2{display:grid;grid-template-columns:1fr 1fr;gap:10px}
.pay-submit{width:100%;margin-top:16px;padding:12px;border-radius:8px;border:none;font-size:14px;font-weight:700;cursor:pointer;transition:all .2s}
.pay-card.bank .pay-submit{background:var(--blue);color:#fff}
.pay-card.crypto .pay-submit{background:var(--amber);color:var(--navy)}
.pay-card.card .pay-submit{background:var(--teal);color:var(--navy)}
.pay-card.debit .pay-submit{background:var(--purple);color:#fff}
.pay-submit:hover{opacity:.9;transform:translateY(-1px)}
.security-strip{display:flex;align-items:center;gap:8px;margin-top:12px;font-size:11px;color:var(--slate)}
.security-strip::before{content:'🔒'}

/* ═══ SUPPORT SECTION ═══ */
.support-grid{display:grid;grid-template-columns:1fr 1fr 1fr;gap:16px;margin-bottom:40px}
.sup-card{background:var(--card);border:1px solid var(--border);border-radius:14px;padding:28px;transition:all .25s;text-align:center}
.sup-card:hover{border-color:rgba(0,212,184,.3);transform:translateY(-2px)}
.sup-icon{font-size:36px;margin-bottom:16px;display:block}
.sup-title{font-family:var(--ff-disp);font-size:16px;font-weight:700;color:var(--white);margin-bottom:8px}
.sup-desc{font-size:13px;color:var(--slate);line-height:1.6;margin-bottom:18px}
.sup-btn{display:inline-flex;align-items:center;gap:7px;background:var(--teal-glow);border:1px solid rgba(0,212,184,.25);color:var(--teal);padding:9px 20px;border-radius:8px;font-size:13px;font-weight:600;text-decoration:none;cursor:pointer;transition:all .2s}
.sup-btn:hover{background:var(--teal);color:var(--navy)}
.sup-avail{font-size:11px;color:var(--green);margin-top:10px;display:flex;align-items:center;gap:5px;justify-content:center}
.sup-avail::before{content:'';width:6px;height:6px;border-radius:50%;background:var(--green);display:inline-block}
.contact-panel{background:var(--card);border:1px solid var(--border);border-radius:14px;padding:40px;display:grid;grid-template-columns:1.2fr 1fr;gap:40px}
.cf-label{display:block;font-size:12px;color:var(--slate);margin-bottom:6px;margin-top:16px}
.cf-label:first-child{margin-top:0}
.cf-input,.cf-textarea{width:100%;background:var(--card2);border:1px solid var(--border2);color:var(--white);padding:11px 14px;border-radius:8px;font-size:13px;font-family:var(--ff-body);outline:none;transition:border-color .2s;resize:none}
.cf-input:focus,.cf-textarea:focus{border-color:var(--teal)}
.cf-input::placeholder,.cf-textarea::placeholder{color:var(--slate)}
.cf-row2{display:grid;grid-template-columns:1fr 1fr;gap:12px}
.cf-submit{margin-top:20px;background:var(--teal);color:var(--navy);border:none;padding:13px 28px;border-radius:8px;font-size:14px;font-weight:700;cursor:pointer;transition:all .2s;width:100%}
.cf-submit:hover{background:#00bda6;transform:translateY(-1px)}
.contact-info{}
.ci-title{font-family:var(--ff-disp);font-size:18px;font-weight:700;color:var(--white);margin-bottom:20px}
.ci-item{display:flex;gap:14px;align-items:flex-start;margin-bottom:20px;padding:16px;background:var(--card2);border:1px solid var(--border);border-radius:10px}
.ci-ico{font-size:20px;flex-shrink:0;margin-top:1px}
.ci-lbl{font-size:12px;color:var(--slate);margin-bottom:3px}
.ci-val{font-size:13px;color:var(--white);font-weight:500}
.ci-val a{color:var(--teal);text-decoration:none}
.team-strip{margin-top:24px}
.ts-label{font-size:12px;color:var(--slate);margin-bottom:12px}
.team-avatars{display:flex;gap:-8px}
.t-av{width:38px;height:38px;border-radius:50%;border:2px solid var(--card);display:flex;align-items:center;justify-content:center;font-size:16px;margin-left:-8px;first-child{margin-left:0}}
.t-av:first-child{margin-left:0}
.team-note{font-size:12px;color:var(--slate);margin-top:10px}
.team-note strong{color:var(--green)}

/* ═══ CLAIMS & RECOVERY ═══ */
.recovery-banner{
  background:linear-gradient(135deg,var(--card) 0%,#16203a 100%);
  border:1px solid var(--border);border-radius:16px;padding:36px;
  display:grid;grid-template-columns:1.3fr 1fr;gap:32px;align-items:center;margin-bottom:32px;
  position:relative;overflow:hidden;
}
.recovery-banner::before{
  content:'';position:absolute;top:-40%;right:-10%;width:300px;height:300px;
  background:radial-gradient(circle,rgba(0,212,184,.08) 0%,transparent 70%);
}
.rb-tag{display:inline-flex;align-items:center;gap:6px;font-family:var(--ff-mono);font-size:11px;color:var(--amber);letter-spacing:1.5px;text-transform:uppercase;background:rgba(245,158,11,.1);border:1px solid rgba(245,158,11,.25);padding:5px 12px;border-radius:20px;margin-bottom:14px}
.recovery-banner h3{font-family:var(--ff-disp);font-size:24px;font-weight:800;color:var(--white);margin-bottom:12px;line-height:1.25}
.recovery-banner p{font-size:13px;color:var(--slate);line-height:1.7;max-width:480px}
.rb-stats{display:flex;gap:28px;margin-top:20px}
.rb-stat-v{font-family:var(--ff-disp);font-size:24px;font-weight:800;color:var(--teal)}
.rb-stat-l{font-size:11px;color:var(--slate);margin-top:2px}
.recovery-form{background:var(--card2);border:1px solid var(--border2);border-radius:12px;padding:24px;position:relative;z-index:1}
.recovery-form .cf-label{color:var(--slate)}

.claim-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:16px;margin-bottom:32px}
.claim-card{background:var(--card);border:1px solid var(--border);border-radius:12px;padding:22px;transition:all .25s}
.claim-card:hover{border-color:rgba(0,212,184,.35);transform:translateY(-2px)}
.claim-icon{width:44px;height:44px;border-radius:10px;display:flex;align-items:center;justify-content:center;font-size:20px;margin-bottom:14px}
.claim-title{font-family:var(--ff-disp);font-size:14px;font-weight:700;color:var(--white);margin-bottom:6px}
.claim-desc{font-size:12px;color:var(--slate);line-height:1.55}

.process-steps{display:flex;gap:0;margin-top:8px}
.pstep{flex:1;position:relative;padding:0 16px 0 0}
.pstep:last-child{padding-right:0}
.pstep::after{content:'';position:absolute;top:18px;right:0;width:16px;height:1px;background:var(--border2)}
.pstep:last-child::after{display:none}
.pstep-num{width:36px;height:36px;border-radius:50%;background:var(--card2);border:1px solid var(--border2);display:flex;align-items:center;justify-content:center;font-family:var(--ff-mono);font-size:13px;font-weight:600;color:var(--teal);margin-bottom:12px}
.pstep-title{font-size:13px;font-weight:600;color:var(--white);margin-bottom:4px}
.pstep-desc{font-size:11px;color:var(--slate);line-height:1.5}

/* ═══ LOYALTY / REFERRAL ═══ */
.loyalty-grid{display:grid;grid-template-columns:1.4fr 1fr;gap:16px}
.loyalty-main{background:var(--card);border:1px solid var(--border);border-radius:14px;padding:32px}
.referral-box{background:var(--card2);border:1px dashed var(--border2);border-radius:10px;padding:18px;display:flex;align-items:center;justify-content:space-between;gap:16px;margin-top:18px;flex-wrap:wrap}
.ref-code{font-family:var(--ff-mono);font-size:16px;font-weight:600;color:var(--teal);letter-spacing:2px}
.ref-copy{background:var(--teal);color:var(--navy);border:none;padding:9px 18px;border-radius:7px;font-size:12px;font-weight:700;cursor:pointer;transition:all .2s}
.ref-copy:hover{background:#00bda6}
.tier-row{display:flex;align-items:center;gap:14px;padding:14px 0;border-bottom:1px solid rgba(36,48,80,.5)}
.tier-row:last-child{border-bottom:none}
.tier-badge{width:38px;height:38px;border-radius:10px;display:flex;align-items:center;justify-content:center;font-size:17px;flex-shrink:0}
.tier-name{font-size:13px;font-weight:600;color:var(--white)}
.tier-desc{font-size:11px;color:var(--slate)}
.tier-pct{font-family:var(--ff-mono);font-size:13px;color:var(--teal);font-weight:600;margin-left:auto}

/* ═══ LIVE BAR ═══ */
.live-bar{display:flex;align-items:center;gap:22px;background:var(--card);border:1px solid var(--border);border-radius:10px;padding:13px 24px;margin-bottom:28px;overflow-x:auto}
.live-item{display:flex;align-items:center;gap:8px;font-size:12px;color:var(--slate);white-space:nowrap;flex-shrink:0}
.live-item strong{color:var(--white);font-family:var(--ff-mono);font-weight:500}
.live-sep{width:1px;height:16px;background:var(--border);flex-shrink:0}

/* ═══ KPI STRIP ═══ */
.kpi-strip{display:grid;grid-template-columns:repeat(4,1fr);gap:16px;margin-bottom:24px}
.kpi-card{background:var(--card);border:1px solid var(--border);border-radius:12px;padding:20px 22px;transition:border-color .2s}
.kpi-card:hover{border-color:rgba(0,212,184,.4)}
.kpi-top{display:flex;align-items:center;justify-content:space-between;margin-bottom:12px}
.kpi-icon{width:36px;height:36px;border-radius:8px;display:flex;align-items:center;justify-content:center;font-size:16px}
.kpi-change{font-size:11px;font-weight:600;padding:2px 7px;border-radius:20px;display:flex;align-items:center;gap:3px}
.kpi-change.up{background:rgba(16,185,129,.12);color:var(--green)}
.kpi-change.dn{background:rgba(239,68,68,.12);color:var(--red)}
.kpi-val{font-family:var(--ff-disp);font-size:26px;font-weight:800;color:var(--white);line-height:1}
.kpi-lbl{font-size:12px;color:var(--slate);margin-top:4px}

/* ═══ DASHBOARD GRID / PANELS ═══ */
.dash-grid{display:grid;grid-template-columns:1fr 1fr 1fr;grid-template-rows:auto auto;gap:16px}
.panel{background:var(--card);border:1px solid var(--border);border-radius:12px;padding:22px;transition:border-color .2s}
.panel:hover{border-color:rgba(0,212,184,.3)}
.panel-title{font-family:var(--ff-disp);font-size:14px;font-weight:700;color:var(--white);margin-bottom:18px;display:flex;align-items:center;justify-content:space-between}
.panel-tag{font-family:var(--ff-mono);font-size:10px;color:var(--slate);letter-spacing:1px}
.col-2{grid-column:span 2}
.col-3{grid-column:span 3}

/* Shipment list */
.shipment-item{display:flex;align-items:center;gap:12px;padding:11px 0;border-bottom:1px solid rgba(36,48,80,.6)}
.shipment-item:last-child{border-bottom:none;padding-bottom:0}
.ship-icon{width:34px;height:34px;border-radius:8px;flex-shrink:0;display:flex;align-items:center;justify-content:center;font-size:15px}
.ship-info{flex:1}
.ship-id{font-family:var(--ff-mono);font-size:12px;color:var(--white);font-weight:500}
.ship-route{font-size:11px;color:var(--slate)}
.ship-status{font-size:11px;font-weight:500;padding:3px 9px;border-radius:20px;white-space:nowrap}
.status-transit{background:rgba(0,212,184,.1);color:var(--teal);border:1px solid rgba(0,212,184,.2)}
.status-customs{background:rgba(245,158,11,.1);color:var(--amber);border:1px solid rgba(245,158,11,.2)}
.status-delivered{background:rgba(16,185,129,.1);color:var(--green);border:1px solid rgba(16,185,129,.2)}
.status-delayed{background:rgba(239,68,68,.1);color:var(--red);border:1px solid rgba(239,68,68,.2)}

/* Progress rows */
.prog-row{display:flex;align-items:center;gap:10px;margin-bottom:13px}
.prog-row:last-child{margin-bottom:0}
.prog-label{font-size:12px;color:var(--slate);width:80px;flex-shrink:0}
.prog-track{flex:1;height:5px;background:var(--border);border-radius:3px;overflow:hidden}
.prog-fill{height:100%;border-radius:3px;transition:width 1.2s ease}
.prog-val{font-family:var(--ff-mono);font-size:11px;color:var(--white);width:32px;text-align:right}

.sparkline{width:100%;height:64px;margin-top:8px}

/* Ports table */
.ports-table{width:100%;border-collapse:collapse}
.ports-table th{text-align:left;font-family:var(--ff-mono);font-size:10px;color:var(--slate);letter-spacing:1px;text-transform:uppercase;padding:0 0 10px 0;border-bottom:1px solid var(--border)}
.ports-table td{padding:10px 0;border-bottom:1px solid rgba(36,48,80,.5);font-size:12px;color:var(--light);vertical-align:middle}
.ports-table tr:last-child td{border-bottom:none}
.port-flag{font-size:16px}
.port-vol{font-family:var(--ff-mono);font-size:12px;color:var(--teal)}
.port-cap-bar{width:64px;height:4px;background:var(--border);border-radius:2px;overflow:hidden;display:inline-block;vertical-align:middle}
.port-cap-fill{height:100%;border-radius:2px;background:var(--teal)}

/* ═══ NODE PORTFOLIO ═══ */
.portfolio-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:16px}
.node-card{background:var(--card);border:1px solid var(--border);border-radius:14px;padding:26px;position:relative;overflow:hidden;transition:all .25s;cursor:pointer}
.node-card::before{content:'';position:absolute;inset:0;background:radial-gradient(circle at 50% 0%,rgba(0,212,184,.06) 0%,transparent 60%);pointer-events:none}
.node-card:hover{border-color:rgba(0,212,184,.4);transform:translateY(-3px);box-shadow:0 16px 48px rgba(0,0,0,.3)}
.nc-header{display:flex;align-items:flex-start;justify-content:space-between;margin-bottom:20px}
.nc-region{font-family:var(--ff-mono);font-size:10px;letter-spacing:1.5px;text-transform:uppercase;color:var(--slate);margin-bottom:4px}
.nc-name{font-family:var(--ff-disp);font-size:17px;font-weight:700;color:var(--white)}
.nc-status-dot{width:8px;height:8px;border-radius:50%;flex-shrink:0;margin-top:4px;animation:pulse 2s infinite}
.nc-metric-grid{display:grid;grid-template-columns:1fr 1fr;gap:12px;margin-bottom:20px}
.nc-metric-val{font-family:var(--ff-disp);font-size:20px;font-weight:700;color:var(--white)}
.nc-metric-lbl{font-size:11px;color:var(--slate)}
.nc-footer{display:flex;align-items:center;justify-content:space-between;padding-top:16px;border-top:1px solid var(--border)}
.nc-tags{display:flex;gap:6px;flex-wrap:wrap}
.nc-tag{font-size:10px;padding:2px 8px;border-radius:20px;background:rgba(36,48,80,.8);color:var(--slate);border:1px solid var(--border)}
.nc-arrow{font-size:16px;color:var(--teal)}

/* ═══ BACKGROUNDS ═══ */
.bg-steel{background:var(--steel)}
.bg-navy{background:var(--navy)}
.bg-panel{background:var(--panel)}

/* ═══ RESPONSIVE ═══ */
@media(max-width:1100px){.prod-grid{grid-template-columns:repeat(3,1fr)}.kpi-strip{grid-template-columns:1fr 1fr}.dash-grid{grid-template-columns:1fr 1fr}.portfolio-grid{grid-template-columns:1fr 1fr}.col-2,.col-3{grid-column:span 2}}
@media(max-width:900px){
  .hero{grid-template-columns:1fr}
  .hero-right{display:none}
  .pay-grid{grid-template-columns:1fr}
  .support-grid{grid-template-columns:1fr 1fr}
  .contact-panel{grid-template-columns:1fr}
  .dash-grid{grid-template-columns:1fr}
  .portfolio-grid{grid-template-columns:1fr}
  .col-2,.col-3{grid-column:span 1}
  section.sec{padding:60px 24px}
  nav{padding:0 20px}
  .nav-links a{display:none}
}
@media(max-width:600px){
  .prod-grid{grid-template-columns:1fr 1fr}
  .kpi-strip{grid-template-columns:1fr}
  .support-grid{grid-template-columns:1fr}
  .pricing-track{padding:4px 0}
  section.sec{padding:48px 16px}
}
</style>
</head>
<body>

<!-- ══════════════════════════════════════════════
     NAV
══════════════════════════════════════════════ -->
<nav>
  <div class="nav-logo">
    <div class="nav-logo-icon">⬡</div>
    Nex<span>voya</span>
  </div>
  <div class="nav-links">
    <a href="#dashboard">Dashboard</a>
    <a href="#portfolio">Nodes</a>
    <a href="#store">Store</a>
    <a href="#pricing">Pricing</a>
    <a href="#payments">Payments</a>
    <a href="#recovery">Claims &amp; Recovery</a>
    <a href="#support">Support</a>
    <div style="width:1px;height:22px;background:var(--border);margin:0 6px"></div>
    <div class="nav-live"><div class="pdot"></div> Live Platform</div>
  </div>
</nav>

<!-- ══════════════════════════════════════════════
     HERO
══════════════════════════════════════════════ -->
<section class="hero">
  <div class="hero-left">
    <div class="eyebrow">Nexvoya Global Logistics & Commerce</div>
    <h1>Ship, Store &amp;<br><em>Trade Globally</em><br>from one hub.</h1>
    <p class="hero-sub">The world's first decentralized logistics-commerce platform. Ship physical freight, trade digital assets, book services, and pay your way — bank, crypto, or card — in one unified workspace.</p>
    <div class="hero-btns">
      <a href="#store" class="btn-p">Explore the Store →</a>
      <a href="#pricing" class="btn-o">View Pricing Levels</a>
    </div>
    <div class="hero-stats">
      <div><div class="hs-val">142<span>K</span></div><div class="hs-lbl">Active shipments</div></div>
      <div><div class="hs-val">98.<span>4%</span></div><div class="hs-lbl">On-time rate</div></div>
      <div><div class="hs-val">18</div><div class="hs-lbl">Service levels</div></div>
      <div><div class="hs-val">4</div><div class="hs-lbl">Payment methods</div></div>
    </div>
  </div>
  <div class="hero-right">
    <div style="position:relative">
      <canvas id="globe" width="680" height="680"></canvas>
      <div class="rb">
        <div class="rb-dot" style="background:#00D4B8"></div>
        <div><div class="rb-r">SHA → LAX</div><div class="rb-s">In transit · 4d 12h</div></div>
      </div>
      <div class="rb">
        <div class="rb-dot" style="background:#F59E0B"></div>
        <div><div class="rb-r">DXB → LHR</div><div class="rb-s">Customs · 6h ETA</div></div>
      </div>
      <div class="rb">
        <div class="rb-dot" style="background:#10B981"></div>
        <div><div class="rb-r">NYC → CDG</div><div class="rb-s">Delivered ✓</div></div>
      </div>
    </div>
  </div>
</section>

<!-- ══════════════════════════════════════════════
     LIVE OPERATIONS DASHBOARD
══════════════════════════════════════════════ -->
<section class="sec bg-steel" id="dashboard">
  <div class="sec-num">01</div>
  <div class="sec-hdr">
    <div>
      <div class="sec-ey">Control Center</div>
      <h2>Live Operations Dashboard</h2>
    </div>
    <a href="#" class="sec-act">Open full dashboard ↗</a>
  </div>

  <!-- Live ticker -->
  <div class="live-bar" id="liveBar">
    <div class="nav-live" style="flex-shrink:0"><div class="pdot"></div> Live</div>
    <div class="live-sep"></div>
    <div class="live-item">Active shipments <strong id="lbShipments">142,380</strong></div>
    <div class="live-sep"></div>
    <div class="live-item">Vessels in transit <strong id="lbVessels">1,847</strong></div>
    <div class="live-sep"></div>
    <div class="live-item">On-time rate <strong id="lbOntime">98.4%</strong></div>
    <div class="live-sep"></div>
    <div class="live-item">Open alerts <strong id="lbAlerts">34</strong></div>
    <div class="live-sep"></div>
    <div class="live-item">Last sync <strong id="lbSync">just now</strong></div>
  </div>

  <!-- KPI Strip -->
  <div class="kpi-strip">
    <div class="kpi-card">
      <div class="kpi-top">
        <div class="kpi-icon" style="background:rgba(0,212,184,.1)">📦</div>
        <div class="kpi-change up">▲ 8.2%</div>
      </div>
      <div class="kpi-val" id="kpiShipments">142,380</div>
      <div class="kpi-lbl">Active shipments</div>
    </div>
    <div class="kpi-card">
      <div class="kpi-top">
        <div class="kpi-icon" style="background:rgba(245,158,11,.1)">🚢</div>
        <div class="kpi-change up">▲ 3.1%</div>
      </div>
      <div class="kpi-val" id="kpiVessels">1,847</div>
      <div class="kpi-lbl">Vessels in transit</div>
    </div>
    <div class="kpi-card">
      <div class="kpi-top">
        <div class="kpi-icon" style="background:rgba(239,68,68,.1)">⚠️</div>
        <div class="kpi-change dn">▼ 12%</div>
      </div>
      <div class="kpi-val" id="kpiAlerts">34</div>
      <div class="kpi-lbl">Alerts — delayed</div>
    </div>
    <div class="kpi-card">
      <div class="kpi-top">
        <div class="kpi-icon" style="background:rgba(16,185,129,.1)">✅</div>
        <div class="kpi-change up">▲ 1.4%</div>
      </div>
      <div class="kpi-val">98.4%</div>
      <div class="kpi-lbl">On-time delivery rate</div>
    </div>
  </div>

  <!-- Main grid -->
  <div class="dash-grid">

    <!-- Shipments panel -->
    <div class="panel col-2">
      <div class="panel-title">
        Recent Shipments
        <span class="panel-tag" id="dashUpdated">LIVE · UPDATED JUST NOW</span>
      </div>
      <div class="shipment-item">
        <div class="ship-icon" style="background:rgba(0,212,184,.1)">🚢</div>
        <div class="ship-info">
          <div class="ship-id">NVX-20481-A</div>
          <div class="ship-route">Shanghai → Los Angeles · Ocean Freight</div>
        </div>
        <div class="ship-status status-transit">In Transit</div>
      </div>
      <div class="shipment-item">
        <div class="ship-icon" style="background:rgba(245,158,11,.1)">✈️</div>
        <div class="ship-info">
          <div class="ship-id">NVX-20479-C</div>
          <div class="ship-route">Dubai → London Heathrow · Air Express</div>
        </div>
        <div class="ship-status status-customs">Customs Hold</div>
      </div>
      <div class="shipment-item">
        <div class="ship-icon" style="background:rgba(16,185,129,.1)">🚛</div>
        <div class="ship-info">
          <div class="ship-id">NVX-20476-B</div>
          <div class="ship-route">Frankfurt → Warsaw · Road Freight</div>
        </div>
        <div class="ship-status status-delivered">Delivered</div>
      </div>
      <div class="shipment-item">
        <div class="ship-icon" style="background:rgba(239,68,68,.1)">🛳️</div>
        <div class="ship-info">
          <div class="ship-id">NVX-20470-D</div>
          <div class="ship-route">Rotterdam → New York · Ocean Freight</div>
        </div>
        <div class="ship-status status-delayed">Delayed</div>
      </div>
      <div class="shipment-item">
        <div class="ship-icon" style="background:rgba(0,212,184,.1)">✈️</div>
        <div class="ship-info">
          <div class="ship-id">NVX-20465-A</div>
          <div class="ship-route">Singapore → Sydney · Air Freight</div>
        </div>
        <div class="ship-status status-transit">In Transit</div>
      </div>
    </div>

    <!-- Mode breakdown -->
    <div class="panel">
      <div class="panel-title">
        Volume by Mode
        <span class="panel-tag">THIS WEEK</span>
      </div>
      <div style="margin-bottom:20px">
        <svg class="sparkline" viewBox="0 0 200 64" xmlns="http://www.w3.org/2000/svg">
          <defs>
            <linearGradient id="sg" x1="0" y1="0" x2="0" y2="1">
              <stop offset="0%" stop-color="#00D4B8" stop-opacity=".3"/>
              <stop offset="100%" stop-color="#00D4B8" stop-opacity="0"/>
            </linearGradient>
          </defs>
          <path d="M0,50 L28,38 L56,42 L84,22 L112,30 L140,12 L168,18 L200,8" fill="none" stroke="#00D4B8" stroke-width="2" stroke-linecap="round"/>
          <path d="M0,50 L28,38 L56,42 L84,22 L112,30 L140,12 L168,18 L200,8 L200,64 L0,64Z" fill="url(#sg)"/>
        </svg>
      </div>
      <div class="prog-row">
        <div class="prog-label">Ocean</div>
        <div class="prog-track"><div class="prog-fill" style="width:62%;background:#00D4B8"></div></div>
        <div class="prog-val">62%</div>
      </div>
      <div class="prog-row">
        <div class="prog-label">Air</div>
        <div class="prog-track"><div class="prog-fill" style="width:24%;background:#F59E0B"></div></div>
        <div class="prog-val">24%</div>
      </div>
      <div class="prog-row">
        <div class="prog-label">Road</div>
        <div class="prog-track"><div class="prog-fill" style="width:10%;background:#6366F1"></div></div>
        <div class="prog-val">10%</div>
      </div>
      <div class="prog-row">
        <div class="prog-label">Rail</div>
        <div class="prog-track"><div class="prog-fill" style="width:4%;background:#94A3B8"></div></div>
        <div class="prog-val">4%</div>
      </div>
    </div>

    <!-- Ports table -->
    <div class="panel col-2">
      <div class="panel-title">
        Top Active Ports
        <span class="panel-tag">BY VOLUME</span>
      </div>
      <table class="ports-table">
        <thead>
          <tr>
            <th></th>
            <th>Port</th>
            <th>Country</th>
            <th>Vol / week</th>
            <th>Capacity</th>
            <th>Status</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="port-flag">🇨🇳</td>
            <td>Shanghai</td>
            <td style="color:var(--slate)">China</td>
            <td class="port-vol">48,220</td>
            <td><div class="port-cap-bar"><div class="port-cap-fill" style="width:87%"></div></div></td>
            <td><span class="ship-status status-transit">Operational</span></td>
          </tr>
          <tr>
            <td class="port-flag">🇳🇱</td>
            <td>Rotterdam</td>
            <td style="color:var(--slate)">Netherlands</td>
            <td class="port-vol">31,450</td>
            <td><div class="port-cap-bar"><div class="port-cap-fill" style="width:74%"></div></div></td>
            <td><span class="ship-status status-transit">Operational</span></td>
          </tr>
          <tr>
            <td class="port-flag">🇸🇬</td>
            <td>Singapore</td>
            <td style="color:var(--slate)">Singapore</td>
            <td class="port-vol">28,910</td>
            <td><div class="port-cap-bar"><div class="port-cap-fill" style="width:69%"></div></div></td>
            <td><span class="ship-status status-transit">Operational</span></td>
          </tr>
          <tr>
            <td class="port-flag">🇺🇸</td>
            <td>Los Angeles</td>
            <td style="color:var(--slate)">USA</td>
            <td class="port-vol">22,780</td>
            <td><div class="port-cap-bar"><div class="port-cap-fill" style="width:91%"></div></div></td>
            <td><span class="ship-status status-customs">Near Capacity</span></td>
          </tr>
          <tr>
            <td class="port-flag">🇦🇪</td>
            <td>Jebel Ali</td>
            <td style="color:var(--slate)">UAE</td>
            <td class="port-vol">19,640</td>
            <td><div class="port-cap-bar"><div class="port-cap-fill" style="width:58%"></div></div></td>
            <td><span class="ship-status status-transit">Operational</span></td>
          </tr>
        </tbody>
      </table>
    </div>

    <!-- Revenue mini -->
    <div class="panel">
      <div class="panel-title">Revenue Trend
        <span class="panel-tag">6M</span>
      </div>
      <div style="margin-bottom:14px">
        <div style="font-family:var(--ff-disp);font-size:26px;font-weight:800;color:var(--white)">$24.7M</div>
        <div style="font-size:12px;color:var(--slate);margin-top:2px">Month-to-date revenue</div>
      </div>
      <svg class="sparkline" viewBox="0 0 200 64" xmlns="http://www.w3.org/2000/svg">
        <defs>
          <linearGradient id="ag" x1="0" y1="0" x2="0" y2="1">
            <stop offset="0%" stop-color="#F59E0B" stop-opacity=".3"/>
            <stop offset="100%" stop-color="#F59E0B" stop-opacity="0"/>
          </linearGradient>
        </defs>
        <path d="M0,52 L33,44 L66,48 L100,30 L133,34 L166,16 L200,10" fill="none" stroke="#F59E0B" stroke-width="2" stroke-linecap="round"/>
        <path d="M0,52 L33,44 L66,48 L100,30 L133,34 L166,16 L200,10 L200,64 L0,64Z" fill="url(#ag)"/>
      </svg>
      <div style="display:flex;justify-content:space-between;font-family:var(--ff-mono);font-size:10px;color:var(--slate);margin-top:6px">
        <span>JAN</span><span>FEB</span><span>MAR</span><span>APR</span><span>MAY</span><span>JUN</span>
      </div>
    </div>

  </div>
</section>

<!-- ══════════════════════════════════════════════
     REGIONAL NODE PORTFOLIO
══════════════════════════════════════════════ -->
<section class="sec bg-navy" id="portfolio">
  <div class="sec-num">02</div>
  <div class="sec-hdr">
    <div>
      <div class="sec-ey">Decentralized Network</div>
      <h2>Regional Node Portfolio &amp; Services</h2>
    </div>
    <a href="#" class="sec-act">All 140 nodes ↗</a>
  </div>

  <div class="portfolio-grid">

    <div class="node-card">
      <div class="nc-header">
        <div>
          <div class="nc-region">Asia Pacific</div>
          <div class="nc-name">Shanghai Hub</div>
        </div>
        <div class="nc-status-dot" style="background:#10B981"></div>
      </div>
      <div class="nc-metric-grid">
        <div class="nc-metric"><div class="nc-metric-val">48.2K</div><div class="nc-metric-lbl">Weekly volume</div></div>
        <div class="nc-metric"><div class="nc-metric-val">87%</div><div class="nc-metric-lbl">Capacity used</div></div>
        <div class="nc-metric"><div class="nc-metric-val">1,420</div><div class="nc-metric-lbl">Active routes</div></div>
        <div class="nc-metric"><div class="nc-metric-val">99.1%</div><div class="nc-metric-lbl">Uptime</div></div>
      </div>
      <div class="nc-footer">
        <div class="nc-tags"><div class="nc-tag">Ocean</div><div class="nc-tag">Air</div><div class="nc-tag">Bonded WH</div></div>
        <div class="nc-arrow">→</div>
      </div>
    </div>

    <div class="node-card">
      <div class="nc-header">
        <div>
          <div class="nc-region">Europe</div>
          <div class="nc-name">Rotterdam Gate</div>
        </div>
        <div class="nc-status-dot" style="background:#10B981"></div>
      </div>
      <div class="nc-metric-grid">
        <div class="nc-metric"><div class="nc-metric-val">31.4K</div><div class="nc-metric-lbl">Weekly volume</div></div>
        <div class="nc-metric"><div class="nc-metric-val">74%</div><div class="nc-metric-lbl">Capacity used</div></div>
        <div class="nc-metric"><div class="nc-metric-val">980</div><div class="nc-metric-lbl">Active routes</div></div>
        <div class="nc-metric"><div class="nc-metric-val">98.7%</div><div class="nc-metric-lbl">Uptime</div></div>
      </div>
      <div class="nc-footer">
        <div class="nc-tags"><div class="nc-tag">Ocean</div><div class="nc-tag">Rail</div><div class="nc-tag">Cold Chain</div></div>
        <div class="nc-arrow">→</div>
      </div>
    </div>

    <div class="node-card">
      <div class="nc-header">
        <div>
          <div class="nc-region">Southeast Asia</div>
          <div class="nc-name">Singapore Apex</div>
        </div>
        <div class="nc-status-dot" style="background:#10B981"></div>
      </div>
      <div class="nc-metric-grid">
        <div class="nc-metric"><div class="nc-metric-val">28.9K</div><div class="nc-metric-lbl">Weekly volume</div></div>
        <div class="nc-metric"><div class="nc-metric-val">69%</div><div class="nc-metric-lbl">Capacity used</div></div>
        <div class="nc-metric"><div class="nc-metric-val">860</div><div class="nc-metric-lbl">Active routes</div></div>
        <div class="nc-metric"><div class="nc-metric-val">99.4%</div><div class="nc-metric-lbl">Uptime</div></div>
      </div>
      <div class="nc-footer">
        <div class="nc-tags"><div class="nc-tag">Air</div><div class="nc-tag">Ocean</div><div class="nc-tag">FTZ</div></div>
        <div class="nc-arrow">→</div>
      </div>
    </div>

    <div class="node-card">
      <div class="nc-header">
        <div>
          <div class="nc-region">North America</div>
          <div class="nc-name">LA Pacific Node</div>
        </div>
        <div class="nc-status-dot" style="background:#F59E0B"></div>
      </div>
      <div class="nc-metric-grid">
        <div class="nc-metric"><div class="nc-metric-val">22.8K</div><div class="nc-metric-lbl">Weekly volume</div></div>
        <div class="nc-metric"><div class="nc-metric-val">91%</div><div class="nc-metric-lbl">Capacity used</div></div>
        <div class="nc-metric"><div class="nc-metric-val">720</div><div class="nc-metric-lbl">Active routes</div></div>
        <div class="nc-metric"><div class="nc-metric-val">97.2%</div><div class="nc-metric-lbl">Uptime</div></div>
      </div>
      <div class="nc-footer">
        <div class="nc-tags"><div class="nc-tag">Ocean</div><div class="nc-tag">Road</div><div class="nc-tag">⚠ Near Cap.</div></div>
        <div class="nc-arrow">→</div>
      </div>
    </div>

    <div class="node-card">
      <div class="nc-header">
        <div>
          <div class="nc-region">Middle East</div>
          <div class="nc-name">Jebel Ali Nexus</div>
        </div>
        <div class="nc-status-dot" style="background:#10B981"></div>
      </div>
      <div class="nc-metric-grid">
        <div class="nc-metric"><div class="nc-metric-val">19.6K</div><div class="nc-metric-lbl">Weekly volume</div></div>
        <div class="nc-metric"><div class="nc-metric-val">58%</div><div class="nc-metric-lbl">Capacity used</div></div>
        <div class="nc-metric"><div class="nc-metric-val">640</div><div class="nc-metric-lbl">Active routes</div></div>
        <div class="nc-metric"><div class="nc-metric-val">99.8%</div><div class="nc-metric-lbl">Uptime</div></div>
      </div>
      <div class="nc-footer">
        <div class="nc-tags"><div class="nc-tag">Air</div><div class="nc-tag">Ocean</div><div class="nc-tag">Hazmat</div></div>
        <div class="nc-arrow">→</div>
      </div>
    </div>

    <div class="node-card">
      <div class="nc-header">
        <div>
          <div class="nc-region">Africa</div>
          <div class="nc-name">Mombasa Rise</div>
        </div>
        <div class="nc-status-dot" style="background:#10B981"></div>
      </div>
      <div class="nc-metric-grid">
        <div class="nc-metric"><div class="nc-metric-val">8.3K</div><div class="nc-metric-lbl">Weekly volume</div></div>
        <div class="nc-metric"><div class="nc-metric-val">44%</div><div class="nc-metric-lbl">Capacity used</div></div>
        <div class="nc-metric"><div class="nc-metric-val">210</div><div class="nc-metric-lbl">Active routes</div></div>
        <div class="nc-metric"><div class="nc-metric-val">96.5%</div><div class="nc-metric-lbl">Uptime</div></div>
      </div>
      <div class="nc-footer">
        <div class="nc-tags"><div class="nc-tag">Ocean</div><div class="nc-tag">Road</div><div class="nc-tag">Growth</div></div>
        <div class="nc-arrow">→</div>
      </div>
    </div>

  </div>
</section>

<!-- ══════════════════════════════════════════════
     STORE
══════════════════════════════════════════════ -->
<section class="sec bg-steel" id="store">
  <div class="sec-num">03</div>
  <div class="sec-hdr">
    <div>
      <div class="sec-ey">Nexvoya Marketplace</div>
      <h2>Store — Goods, Services &amp; Digital Assets</h2>
    </div>
    <a href="#" class="sec-act">Browse all listings ↗</a>
  </div>

  <div class="store-tabs">
    <div class="stab active" onclick="filterStore('all',this)">All Products</div>
    <div class="stab" onclick="filterStore('goods',this)">📦 Physical Goods</div>
    <div class="stab" onclick="filterStore('services',this)">🛠 Services</div>
    <div class="stab" onclick="filterStore('digital',this)">💎 Digital Assets</div>
    <div class="stab" onclick="filterStore('bookings',this)">📅 Bookings</div>
  </div>

  <div class="prod-grid" id="prodGrid">

    <!-- Physical Goods -->
    <div class="prod-card" data-cat="goods">
      <div class="prod-thumb" style="background:linear-gradient(135deg,#0e2040,#142a50)">🚢<div class="prod-badge badge-new">NEW</div></div>
      <div class="prod-body">
        <div class="prod-cat">Physical Goods</div>
        <div class="prod-name">Industrial Freight Container — 20ft</div>
        <div class="prod-desc">ISO-certified, weatherproof steel container ready for full container load (FCL) ocean shipments.</div>
        <div class="prod-foot"><div class="prod-price">$4,888 <small>/unit</small></div><button class="add-btn">Add to Cart</button></div>
      </div>
    </div>

    <div class="prod-card" data-cat="goods">
      <div class="prod-thumb" style="background:linear-gradient(135deg,#1a1030,#26184a)">📦<div class="prod-badge badge-hot">HOT</div></div>
      <div class="prod-body">
        <div class="prod-cat">Physical Goods</div>
        <div class="prod-name">Cold-Chain Pallet Liner Kit (50-pack)</div>
        <div class="prod-desc">Multi-layer insulated pallet liners for pharmaceutical and perishable cargo. Temp-rated −20°C to +25°C.</div>
        <div class="prod-foot"><div class="prod-price">$1,288 <small>/carton</small></div><button class="add-btn">Add to Cart</button></div>
      </div>
    </div>

    <div class="prod-card" data-cat="goods">
      <div class="prod-thumb" style="background:linear-gradient(135deg,#0e2030,#102840)">🏷️<div class="prod-badge badge-new">NEW</div></div>
      <div class="prod-body">
        <div class="prod-cat">Physical Goods</div>
        <div class="prod-name">Smart IoT Cargo Tracker — GPS+BLE</div>
        <div class="prod-desc">Rugged tracker with real-time GPS, humidity, shock & temperature sensors. 12-month battery life.</div>
        <div class="prod-foot"><div class="prod-price">$488 <small>/device</small></div><button class="add-btn">Add to Cart</button></div>
      </div>
    </div>

    <div class="prod-card" data-cat="goods">
      <div class="prod-thumb" style="background:linear-gradient(135deg,#0d1a35,#152240)">⚡<div class="prod-badge badge-hot">HOT</div></div>
      <div class="prod-body">
        <div class="prod-cat">Physical Goods</div>
        <div class="prod-name">Hazmat Certified Packaging Set</div>
        <div class="prod-desc">UN-rated dangerous goods packaging. IATA/IMDG compliant. For air &amp; sea regulated cargo.</div>
        <div class="prod-foot"><div class="prod-price">$288 <small>/set</small></div><button class="add-btn">Add to Cart</button></div>
      </div>
    </div>

    <!-- Services -->
    <div class="prod-card" data-cat="services">
      <div class="prod-thumb" style="background:linear-gradient(135deg,#0e2038,#0c2030)">🛃<div class="prod-badge badge-new">NEW</div></div>
      <div class="prod-body">
        <div class="prod-cat">Services</div>
        <div class="prod-name">Customs Brokerage &amp; Clearance</div>
        <div class="prod-desc">End-to-end import/export documentation, tariff classification, and customs clearance in 140+ countries.</div>
        <div class="prod-foot"><div class="prod-price">$588 <small>/shipment</small></div><button class="add-btn">Book Now</button></div>
      </div>
    </div>

    <div class="prod-card" data-cat="services">
      <div class="prod-thumb" style="background:linear-gradient(135deg,#0d1d38,#0f2040)">📋<div class="prod-badge badge-hot">HOT</div></div>
      <div class="prod-body">
        <div class="prod-cat">Services</div>
        <div class="prod-name">Supply Chain Audit &amp; Consulting</div>
        <div class="prod-desc">Expert 30-day audit of your freight flows, cost structure, and vendor contracts with optimisation report.</div>
        <div class="prod-foot"><div class="prod-price">$3,888 <small>/engagement</small></div><button class="add-btn">Book Now</button></div>
      </div>
    </div>

    <div class="prod-card" data-cat="services">
      <div class="prod-thumb" style="background:linear-gradient(135deg,#0a1830,#0d2038)">🏗️</div>
      <div class="prod-body">
        <div class="prod-cat">Services</div>
        <div class="prod-name">Bonded Warehouse — Monthly Lease</div>
        <div class="prod-desc">Secure, climate-controlled bonded warehouse space in Rotterdam, Singapore, or Dubai. Minimum 1 month.</div>
        <div class="prod-foot"><div class="prod-price">$988 <small>/mo</small></div><button class="add-btn">Reserve Space</button></div>
      </div>
    </div>

    <div class="prod-card" data-cat="services">
      <div class="prod-thumb" style="background:linear-gradient(135deg,#0e2038,#0a1a30)">🚛</div>
      <div class="prod-body">
        <div class="prod-cat">Services</div>
        <div class="prod-name">Last-Mile Delivery Network Access</div>
        <div class="prod-desc">API access to 80+ last-mile carrier integrations. Automated label generation, tracking, and returns.</div>
        <div class="prod-foot"><div class="prod-price">$188 <small>/mo</small></div><button class="add-btn">Activate</button></div>
      </div>
    </div>

    <!-- Digital Assets -->
    <div class="prod-card" data-cat="digital">
      <div class="prod-thumb" style="background:linear-gradient(135deg,#1a0a3a,#2a1050)">💎<div class="prod-badge badge-dig">DIGITAL</div></div>
      <div class="prod-body">
        <div class="prod-cat">Digital Asset</div>
        <div class="prod-name">NVX Route Token — APAC Corridor</div>
        <div class="prod-desc">Tokenized freight capacity on the Asia-Pacific corridor. Redeemable for discounted container bookings.</div>
        <div class="prod-foot"><div class="prod-price">$888 <small>/token</small></div><button class="add-btn">Buy Token</button></div>
      </div>
    </div>

    <div class="prod-card" data-cat="digital">
      <div class="prod-thumb" style="background:linear-gradient(135deg,#1a0830,#260c48)">🔑<div class="prod-badge badge-dig">DIGITAL</div></div>
      <div class="prod-body">
        <div class="prod-cat">Digital Asset</div>
        <div class="prod-name">Smart Contract — Trade Finance Module</div>
        <div class="prod-desc">Automated on-chain letter of credit and invoice financing smart contract, pre-audited by CertiK.</div>
        <div class="prod-foot"><div class="prod-price">$2,888 <small>/license</small></div><button class="add-btn">License</button></div>
      </div>
    </div>

    <div class="prod-card" data-cat="digital">
      <div class="prod-thumb" style="background:linear-gradient(135deg,#0e1040,#141858)">📊<div class="prod-badge badge-dig">DIGITAL</div></div>
      <div class="prod-body">
        <div class="prod-cat">Digital Asset</div>
        <div class="prod-name">Logistics Intelligence Data API</div>
        <div class="prod-desc">Real-time port congestion, rate benchmarks, and vessel AIS data feed. JSON/GraphQL. 99.9% SLA.</div>
        <div class="prod-foot"><div class="prod-price">$488 <small>/mo</small></div><button class="add-btn">Subscribe</button></div>
      </div>
    </div>

    <div class="prod-card" data-cat="digital">
      <div class="prod-thumb" style="background:linear-gradient(135deg,#1a1030,#241440)">🎫<div class="prod-badge badge-dig">DIGITAL</div></div>
      <div class="prod-body">
        <div class="prod-cat">Digital Asset</div>
        <div class="prod-name">Nexvoya Pro Dashboard License</div>
        <div class="prod-desc">Unlimited team seats, white-label portal, advanced analytics, and priority API rate limits. Annual license.</div>
        <div class="prod-foot"><div class="prod-price">$1,888 <small>/yr</small></div><button class="add-btn">Get License</button></div>
      </div>
    </div>

    <!-- Bookings -->
    <div class="prod-card" data-cat="bookings">
      <div class="prod-thumb" style="background:linear-gradient(135deg,#0e2830,#102e38)">🛳️<div class="prod-badge badge-bk">BOOKING</div></div>
      <div class="prod-body">
        <div class="prod-cat">Booking</div>
        <div class="prod-name">Full Container Load (FCL) — Ocean</div>
        <div class="prod-desc">Book 20ft or 40ft FCL slots on major ocean lanes. Shanghai, Rotterdam, Singapore origin ports.</div>
        <div class="prod-foot"><div class="prod-price">$2,188 <small>/slot</small></div><button class="add-btn">Book Slot</button></div>
      </div>
    </div>

    <div class="prod-card" data-cat="bookings">
      <div class="prod-thumb" style="background:linear-gradient(135deg,#0a1e2a,#0e2838)">✈️<div class="prod-badge badge-bk">BOOKING</div></div>
      <div class="prod-body">
        <div class="prod-cat">Booking</div>
        <div class="prod-name">Air Freight Priority Slot</div>
        <div class="prod-desc">Guaranteed next-flight priority air cargo slot on trans-Pacific and Europe-Asia lanes. 100kg minimum.</div>
        <div class="prod-foot"><div class="prod-price">$1,488 <small>/slot</small></div><button class="add-btn">Book Slot</button></div>
      </div>
    </div>

    <div class="prod-card" data-cat="bookings">
      <div class="prod-thumb" style="background:linear-gradient(135deg,#0c1e30,#102230)">🏬<div class="prod-badge badge-bk">BOOKING</div></div>
      <div class="prod-body">
        <div class="prod-cat">Booking</div>
        <div class="prod-name">Port Inspection &amp; Survey Service</div>
        <div class="prod-desc">On-site cargo condition inspection at any of our 140 port nodes. Certified surveyors, same-day report.</div>
        <div class="prod-foot"><div class="prod-price">$388 <small>/inspection</small></div><button class="add-btn">Book Now</button></div>
      </div>
    </div>

    <div class="prod-card" data-cat="bookings">
      <div class="prod-thumb" style="background:linear-gradient(135deg,#0e2030,#102438)">🤝<div class="prod-badge badge-bk">BOOKING</div></div>
      <div class="prod-body">
        <div class="prod-cat">Booking</div>
        <div class="prod-name">1-on-1 Freight Strategy Session</div>
        <div class="prod-desc">60-minute consultation with a senior Nexvoya logistics specialist. Route optimisation &amp; carrier selection.</div>
        <div class="prod-foot"><div class="prod-price">$188 <small>/session</small></div><button class="add-btn">Book Session</button></div>
      </div>
    </div>

  </div>
</section>

<!-- ══════════════════════════════════════════════
     PRICING LEVELS
══════════════════════════════════════════════ -->
<section class="sec bg-navy" id="pricing">
  <div class="sec-num">04</div>
  <div class="sec-hdr">
    <div>
      <div class="sec-ey">Service Tiers</div>
      <h2>18 Pricing Levels — Starting at $19.88</h2>
    </div>
    <a href="#payments" class="sec-act">Choose a plan →</a>
  </div>

  <div class="pricing-wrap">
    <div class="pricing-track" id="pricingTrack">

      <!-- Level 1 -->
      <div class="price-lvl">
        <div class="lvl-num">LEVEL 01</div>
        <div class="lvl-name">Starter Access</div>
        <div class="lvl-price">$19.88 <span>/mo</span></div>
        <ul class="lvl-features">
          <li>1 shipment/month</li>
          <li>Basic tracking dashboard</li>
          <li>Email support</li>
          <li>Community forum access</li>
        </ul>
        <button class="lvl-btn">Select</button>
      </div>

      <!-- Level 2 -->
      <div class="price-lvl">
        <div class="lvl-num">LEVEL 02</div>
        <div class="lvl-name">Explorer</div>
        <div class="lvl-price">$49.88 <span>/mo</span></div>
        <ul class="lvl-features">
          <li>5 shipments/month</li>
          <li>Live tracking + alerts</li>
          <li>Email + chat support</li>
          <li>1 API key</li>
        </ul>
        <button class="lvl-btn">Select</button>
      </div>

      <!-- Level 3 -->
      <div class="price-lvl">
        <div class="lvl-num">LEVEL 03</div>
        <div class="lvl-name">Navigator</div>
        <div class="lvl-price">$99.88 <span>/mo</span></div>
        <ul class="lvl-features">
          <li>15 shipments/month</li>
          <li>Route optimiser</li>
          <li>Priority email support</li>
          <li>3 API keys</li>
        </ul>
        <button class="lvl-btn">Select</button>
      </div>

      <!-- Level 4 -->
      <div class="price-lvl">
        <div class="lvl-num">LEVEL 04</div>
        <div class="lvl-name">Voyager</div>
        <div class="lvl-price">$199.88 <span>/mo</span></div>
        <ul class="lvl-features">
          <li>40 shipments/month</li>
          <li>Customs doc automation</li>
          <li>Live chat support</li>
          <li>5 API keys</li>
        </ul>
        <button class="lvl-btn">Select</button>
      </div>

      <!-- Level 5 — Featured -->
      <div class="price-lvl featured">
        <div class="lvl-num">LEVEL 05</div>
        <div class="lvl-name">Commerce Pro</div>
        <div class="lvl-price">$399.88 <span>/mo</span></div>
        <ul class="lvl-features">
          <li>100 shipments/month</li>
          <li>Store listing access</li>
          <li>Token wallet included</li>
          <li>Dedicated account rep</li>
          <li>10 API keys</li>
        </ul>
        <button class="lvl-btn">Select</button>
      </div>

      <!-- Level 6 -->
      <div class="price-lvl">
        <div class="lvl-num">LEVEL 06</div>
        <div class="lvl-name">Trade Pulse</div>
        <div class="lvl-price">$699.88 <span>/mo</span></div>
        <ul class="lvl-features">
          <li>200 shipments/month</li>
          <li>Advanced analytics suite</li>
          <li>Phone + chat support</li>
          <li>Crypto payment enabled</li>
        </ul>
        <button class="lvl-btn">Select</button>
      </div>

      <!-- Level 7 -->
      <div class="price-lvl">
        <div class="lvl-num">LEVEL 07</div>
        <div class="lvl-name">Freight Hub</div>
        <div class="lvl-price">$988.88 <span>/mo</span></div>
        <ul class="lvl-features">
          <li>350 shipments/month</li>
          <li>Multi-modal booking</li>
          <li>Cold chain tracking</li>
          <li>SLA 98% guarantee</li>
        </ul>
        <button class="lvl-btn">Select</button>
      </div>

      <!-- Level 8 -->
      <div class="price-lvl">
        <div class="lvl-num">LEVEL 08</div>
        <div class="lvl-name">Supply Chain+</div>
        <div class="lvl-price">$1,488.88 <span>/mo</span></div>
        <ul class="lvl-features">
          <li>600 shipments/month</li>
          <li>Bonded WH access</li>
          <li>White-label portal</li>
          <li>Priority customs lane</li>
        </ul>
        <button class="lvl-btn">Select</button>
      </div>

      <!-- Level 9 -->
      <div class="price-lvl">
        <div class="lvl-num">LEVEL 09</div>
        <div class="lvl-name">Node Partner</div>
        <div class="lvl-price">$1,988.88 <span>/mo</span></div>
        <ul class="lvl-features">
          <li>1,000 shipments/month</li>
          <li>Node co-location access</li>
          <li>API unlimited calls</li>
          <li>Trade finance tools</li>
        </ul>
        <button class="lvl-btn">Select</button>
      </div>

      <!-- Level 10 -->
      <div class="price-lvl">
        <div class="lvl-num">LEVEL 10</div>
        <div class="lvl-name">Global Operator</div>
        <div class="lvl-price">$2,988.88 <span>/mo</span></div>
        <ul class="lvl-features">
          <li>2,000 shipments/month</li>
          <li>5 regional nodes</li>
          <li>Smart contract module</li>
          <li>24/7 phone support</li>
        </ul>
        <button class="lvl-btn">Select</button>
      </div>

      <!-- Level 11 -->
      <div class="price-lvl">
        <div class="lvl-num">LEVEL 11</div>
        <div class="lvl-name">Market Maker</div>
        <div class="lvl-price">$4,188.88 <span>/mo</span></div>
        <ul class="lvl-features">
          <li>3,500 shipments/month</li>
          <li>Digital asset vault</li>
          <li>Carrier rate negotiation</li>
          <li>ESG reporting suite</li>
        </ul>
        <button class="lvl-btn">Select</button>
      </div>

      <!-- Level 12 -->
      <div class="price-lvl">
        <div class="lvl-num">LEVEL 12</div>
        <div class="lvl-name">Corridor Elite</div>
        <div class="lvl-price">$5,988.88 <span>/mo</span></div>
        <ul class="lvl-features">
          <li>5,000 shipments/month</li>
          <li>Dedicated port liaison</li>
          <li>FCL guaranteed slots</li>
          <li>Air express priority</li>
        </ul>
        <button class="lvl-btn">Select</button>
      </div>

      <!-- Level 13 -->
      <div class="price-lvl">
        <div class="lvl-num">LEVEL 13</div>
        <div class="lvl-name">Enterprise Bridge</div>
        <div class="lvl-price">$7,988.88 <span>/mo</span></div>
        <ul class="lvl-features">
          <li>8,000 shipments/month</li>
          <li>ERP integration support</li>
          <li>Onsite training included</li>
          <li>Regulatory compliance desk</li>
        </ul>
        <button class="lvl-btn">Select</button>
      </div>

      <!-- Level 14 -->
      <div class="price-lvl">
        <div class="lvl-num">LEVEL 14</div>
        <div class="lvl-name">Institutional</div>
        <div class="lvl-price">$11,988.88 <span>/mo</span></div>
        <ul class="lvl-features">
          <li>12,000 shipments/month</li>
          <li>Multi-entity management</li>
          <li>Custom SLA drafting</li>
          <li>Private node deployment</li>
        </ul>
        <button class="lvl-btn">Select</button>
      </div>

      <!-- Level 15 -->
      <div class="price-lvl">
        <div class="lvl-num">LEVEL 15</div>
        <div class="lvl-name">Sovereign Fleet</div>
        <div class="lvl-price">$18,888.88 <span>/mo</span></div>
        <ul class="lvl-features">
          <li>20,000 shipments/month</li>
          <li>Fleet tracking suite</li>
          <li>Dedicated IT support team</li>
          <li>Sovereign data residency</li>
        </ul>
        <button class="lvl-btn">Select</button>
      </div>

      <!-- Level 16 -->
      <div class="price-lvl">
        <div class="lvl-num">LEVEL 16</div>
        <div class="lvl-name">Continental</div>
        <div class="lvl-price">$28,888.88 <span>/mo</span></div>
        <ul class="lvl-features">
          <li>35,000 shipments/month</li>
          <li>Regional hub management</li>
          <li>Embedded finance access</li>
          <li>Executive account director</li>
        </ul>
        <button class="lvl-btn">Select</button>
      </div>

      <!-- Level 17 -->
      <div class="price-lvl" style="border-color:rgba(0,212,184,.35)">
        <div class="lvl-num">LEVEL 17</div>
        <div class="lvl-name">Continental Authority</div>
        <div class="lvl-price">$48,888.88 <span>/mo</span></div>
        <ul class="lvl-features">
          <li>60,000 shipments/month</li>
          <li>All 140 port nodes included</li>
          <li>Custom route &amp; lane building</li>
          <li>Dedicated compliance team</li>
          <li>Board-level reporting suite</li>
          <li>48-hour SLA on all claims</li>
        </ul>
        <button class="lvl-btn">Select</button>
      </div>

      <!-- Level 18 — Apex -->
      <div class="price-lvl" style="border-color:var(--gold);background:linear-gradient(145deg,#1a1608,#211c08);width:200px">
        <div class="lvl-num" style="color:var(--gold)">LEVEL 18 — APEX</div>
        <div class="lvl-name" style="color:var(--gold)">Global Nexus</div>
        <div class="lvl-price" style="color:var(--gold)">$88,888.88 <span>/mo</span></div>
        <div style="font-size:11px;color:var(--slate);margin:-6px 0 4px;line-height:1.5">By invitation &amp; application — for global enterprises &amp; sovereign shippers</div>
        <ul class="lvl-features">
          <li>Unlimited shipments, all modes</li>
          <li>Full platform white-label rights</li>
          <li>Dedicated engineering squad</li>
          <li>Blockchain trade settlement module</li>
          <li>Private node deployment option</li>
          <li>C-suite concierge account team</li>
          <li>Custom multi-year contracts</li>
          <li>1-hour emergency response SLA</li>
        </ul>
        <button class="lvl-btn" style="background:var(--gold);color:#000;border-color:var(--gold)">Contact Sales</button>
      </div>


    </div>
  </div>
</section>

<!-- ══════════════════════════════════════════════
     PAYMENT METHODS
══════════════════════════════════════════════ -->
<section class="sec bg-panel" id="payments">
  <div class="sec-num">05</div>
  <div class="sec-hdr">
    <div>
      <div class="sec-ey">Secure Payment Gateway</div>
      <h2>4 Ways to Pay — Fast, Secure, Global</h2>
    </div>
  </div>

  <div class="pay-grid">

    <!-- Bank Transfer -->
    <div class="pay-card bank">
      <div class="pay-icon">🏦</div>
      <div class="pay-title">Bank Transfer (SWIFT / SEPA)</div>
      <div class="pay-desc">Direct bank-to-bank wire transfer via SWIFT for international payments, or SEPA for EUR transfers within the European Economic Area. Settlement within 1–3 business days.</div>
      <div class="pay-detail">
        <div class="pay-detail-row"><span class="pd-lbl">Account Name</span><span class="pd-val">Nexvoya Global Logistics Inc.</span></div>
        <div class="pay-detail-row"><span class="pd-lbl">SWIFT/BIC</span><span class="pd-val">NVXGSGSX</span></div>
        <div class="pay-detail-row"><span class="pd-lbl">IBAN (EUR)</span><span class="pd-val">NL88 NVXB 0001 4288 00</span></div>
        <div class="pay-detail-row"><span class="pd-lbl">USD Routing</span><span class="pd-val">021000088</span></div>
        <div class="pay-detail-row"><span class="pd-lbl">Processing</span><span class="pd-val">1–3 business days</span></div>
      </div>
      <div class="pay-form">
        <label>Your Full Name / Company</label>
        <input class="pay-input" type="text" placeholder="e.g. Meridian Trading Ltd.">
        <label>Transfer Amount (USD)</label>
        <input class="pay-input" type="text" placeholder="e.g. $1,988.88">
        <label>Reference / Invoice Number</label>
        <input class="pay-input" type="text" placeholder="e.g. NVX-INV-20481">
      </div>
      <button class="pay-submit">Generate Bank Transfer Instructions</button>
      <div class="security-strip">256-bit encrypted · PCI DSS Level 1 · FATF compliant</div>
    </div>

    <!-- Cryptocurrency -->
    <div class="pay-card crypto">
      <div class="pay-icon">₿</div>
      <div class="pay-title">Cryptocurrency Payment</div>
      <div class="pay-desc">Pay directly to one of our wallet addresses below. Select a network, copy the address or scan the QR code, and send the exact amount. Always double-check the address before sending — crypto transactions cannot be reversed.</div>

      <!-- Automated checkout (NOWPayments) -->
      <div id="autoCryptoBox" style="display:none;background:var(--card2);border:1px solid rgba(0,212,184,.25);border-radius:10px;padding:16px;margin-bottom:16px">
        <div style="font-size:13px;font-weight:600;color:var(--white);margin-bottom:4px">⚡ Automated Checkout Available</div>
        <div style="font-size:12px;color:var(--slate);margin-bottom:12px">Payment is detected automatically and your order is confirmed within minutes.</div>
        <button class="pay-submit" style="margin-top:0" onclick="openNowPayments()">Pay with Crypto — Auto-Confirm →</button>
      </div>
      <!-- Manual fallback notice (shown until API key configured) -->
      <div id="manualCryptoNotice" style="background:var(--card2);border:1px dashed var(--border2);border-radius:10px;padding:12px 16px;margin-bottom:16px;font-size:11px;color:var(--slate);line-height:1.6">
        💡 Manual payment mode. Automated checkout via NOWPayments can be enabled by adding an API key in the site config — see <code style="color:var(--teal)">NOWPAYMENTS_CONFIG</code> near the top of the script.
      </div>

      <div class="pay-form">
        <label>Select Network / Currency</label>
        <select class="pay-input" id="cryptoSelect" style="cursor:pointer" onchange="updateCrypto()">
          <option value="BTC">Bitcoin (BTC)</option>
          <option value="ETH">Ethereum (ETH)</option>
          <option value="USDT_ERC20">USDT — ERC-20 (Ethereum)</option>
          <option value="USDT_TRC20">USDT — TRC-20 (Tron)</option>
          <option value="TRX">TRON (TRX)</option>
          <option value="XRP">Ripple (XRP)</option>
          <option value="SOL">Solana (SOL)</option>
        </select>
        <label>Amount in USD</label>
        <input class="pay-input" type="text" id="cryptoAmount" placeholder="e.g. 488.88">
      </div>

      <div class="pay-detail" style="margin-top:16px;display:flex;gap:16px;align-items:center">
        <div id="cryptoQR" style="background:#fff;padding:8px;border-radius:8px;flex-shrink:0;line-height:0"></div>
        <div style="flex:1;min-width:0">
          <div class="pay-detail-row" style="margin-bottom:6px"><span class="pd-lbl">Network</span><span class="pd-val" id="cryptoNetwork">Bitcoin (BTC)</span></div>
          <div class="pay-detail-row" style="align-items:flex-start"><span class="pd-lbl">Address</span></div>
          <div style="display:flex;gap:8px;align-items:center;margin-top:4px">
            <div class="pd-val" id="cryptoAddress" style="word-break:break-all;font-size:11px;line-height:1.5">bc1qkgk4ql5f4vkgxf9c6cq304z9yekc5uhd9s6pnz</div>
            <button class="ref-copy" style="flex-shrink:0;padding:6px 12px" onclick="copyCryptoAddr()">Copy</button>
          </div>
          <div class="pay-detail-row" style="margin-top:8px"><span class="pd-lbl">Confirmations needed</span><span class="pd-val" id="cryptoConf">2 confirmations</span></div>
        </div>
      </div>

      <div style="margin-top:16px">
        <div style="font-size:12px;color:var(--slate);margin-bottom:10px">Accepted networks:</div>
        <div class="pay-networks">
          <div class="pay-net">₿ Bitcoin</div>
          <div class="pay-net">Ξ Ethereum</div>
          <div class="pay-net">⬢ USDT (ERC-20 / TRC-20)</div>
          <div class="pay-net">♦ TRON</div>
          <div class="pay-net">✕ XRP</div>
          <div class="pay-net">◎ Solana</div>
        </div>
      </div>

      <button class="pay-submit" onclick="alert('Please send the exact amount to the address shown above, then email your transaction hash to support@nexvoya.com so we can confirm your order.')">I've Sent Payment — Notify Support</button>
      <div class="security-strip">Always verify the address matches exactly · transactions are irreversible</div>
    </div>

    <!-- Credit Card -->
    <div class="pay-card card">
      <div class="pay-icon">💳</div>
      <div class="pay-title">Credit Card</div>
      <div class="pay-desc">Pay securely with Visa, Mastercard, or American Express. Instant processing with 3D Secure authentication. Supports multi-currency billing in 40+ currencies.</div>
      <div class="pay-networks" style="margin-bottom:18px">
        <div class="pay-net">VISA</div>
        <div class="pay-net">Mastercard</div>
        <div class="pay-net">Amex</div>
        <div class="pay-net">UnionPay</div>
      </div>
      <div class="pay-form">
        <label>Cardholder Name</label>
        <input class="pay-input" type="text" placeholder="As printed on card">
        <label>Card Number</label>
        <input class="pay-input" type="text" placeholder="•••• •••• •••• ••••" maxlength="19">
        <div class="pay-row2">
          <div>
            <label>Expiry Date</label>
            <input class="pay-input" type="text" placeholder="MM / YY">
          </div>
          <div>
            <label>CVV / CVC</label>
            <input class="pay-input" type="text" placeholder="•••" maxlength="4">
          </div>
        </div>
        <label>Billing Currency</label>
        <select class="pay-input" style="cursor:pointer">
          <option>USD — US Dollar</option>
          <option>EUR — Euro</option>
          <option>GBP — British Pound</option>
          <option>SGD — Singapore Dollar</option>
          <option>AED — UAE Dirham</option>
          <option>JPY — Japanese Yen</option>
        </select>
      </div>
      <button class="pay-submit">Pay Securely Now</button>
      <div class="security-strip">3D Secure 2.0 · Stripe-powered · PCI DSS · SSL encrypted</div>
    </div>

    <!-- Debit Card -->
    <div class="pay-card debit">
      <div class="pay-icon">🪙</div>
      <div class="pay-title">Debit Card</div>
      <div class="pay-desc">Pay directly from your bank account using any Visa Debit, Mastercard Debit, or Maestro card. Funds deducted instantly. Available in all regions where Nexvoya operates.</div>
      <div class="pay-networks" style="margin-bottom:18px">
        <div class="pay-net">Visa Debit</div>
        <div class="pay-net">MC Debit</div>
        <div class="pay-net">Maestro</div>
        <div class="pay-net">Interac</div>
      </div>
      <div class="pay-form">
        <label>Cardholder Name</label>
        <input class="pay-input" type="text" placeholder="As printed on card">
        <label>Debit Card Number</label>
        <input class="pay-input" type="text" placeholder="•••• •••• •••• ••••" maxlength="19">
        <div class="pay-row2">
          <div>
            <label>Expiry Date</label>
            <input class="pay-input" type="text" placeholder="MM / YY">
          </div>
          <div>
            <label>CVV</label>
            <input class="pay-input" type="text" placeholder="•••" maxlength="3">
          </div>
        </div>
        <label>Billing Address Postcode</label>
        <input class="pay-input" type="text" placeholder="e.g. EC1A 1BB">
      </div>
      <button class="pay-submit">Confirm Debit Payment</button>
      <div class="security-strip">Bank-grade encryption · Instant confirmation · Fraud monitoring</div>
    </div>

  </div>
</section>

<!-- ══════════════════════════════════════════════
     CARGO CLAIMS & RECOVERY CENTER
══════════════════════════════════════════════ -->
<section class="sec bg-steel" id="recovery">
  <div class="sec-num">06</div>
  <div class="sec-hdr">
    <div>
      <div class="sec-ey">Cargo Assurance</div>
      <h2>Claims &amp; Shipment Recovery Center</h2>
    </div>
    <a href="#" class="sec-act">View claims policy ↗</a>
  </div>

  <!-- Banner / quick claim -->
  <div class="recovery-banner">
    <div>
      <div class="rb-tag">⚑ Priority Tracing Desk</div>
      <h3>Missing, delayed, or damaged shipment?<br>Our recovery desk is on it.</h3>
      <p>Every Nexvoya shipment is backed by cargo tracing and insurance support. If a shipment goes missing, arrives damaged, or is held longer than expected, our Recovery Desk investigates with the carrier and port node on your behalf — most cases are resolved within 5–10 business days.</p>
      <div class="rb-stats">
        <div><div class="rb-stat-v">94.8%</div><div class="rb-stat-l">Cases resolved</div></div>
        <div><div class="rb-stat-v">6.2</div><div class="rb-stat-l">Avg. days to resolve</div></div>
        <div><div class="rb-stat-v">140+</div><div class="rb-stat-l">Port nodes covered</div></div>
      </div>
    </div>
    <div class="recovery-form">
      <label class="cf-label">Shipment / Tracking ID</label>
      <input class="cf-input" type="text" placeholder="e.g. NVX-20470-D">
      <label class="cf-label">Issue Type</label>
      <select class="cf-input" style="cursor:pointer">
        <option>Shipment delayed beyond ETA</option>
        <option>Shipment shows no tracking updates</option>
        <option>Cargo arrived damaged</option>
        <option>Cargo missing / lost in transit</option>
        <option>Incorrect delivery address / misroute</option>
        <option>Customs hold — need assistance</option>
      </select>
      <label class="cf-label">Contact Email</label>
      <input class="cf-input" type="email" placeholder="you@company.com">
      <button class="cf-submit">Open Recovery Case →</button>
      <div class="security-strip" style="margin-top:10px">Case reviewed by Recovery Desk within 4 business hours</div>
    </div>
  </div>

  <!-- Claim type cards -->
  <div class="claim-grid">
    <div class="claim-card">
      <div class="claim-icon" style="background:rgba(0,212,184,.12)">📍</div>
      <div class="claim-title">Lost Shipment Tracing</div>
      <div class="claim-desc">We cross-reference AIS/flight manifests and port scan logs with the carrier to locate cargo that's lost tracking visibility.</div>
    </div>
    <div class="claim-card">
      <div class="claim-icon" style="background:rgba(245,158,11,.12)">📦</div>
      <div class="claim-title">Damaged Cargo Claims</div>
      <div class="claim-desc">Submit photos and inspection reports to file a claim against carrier liability or your Nexvoya cargo insurance policy.</div>
    </div>
    <div class="claim-card">
      <div class="claim-icon" style="background:rgba(139,92,246,.12)">↩️</div>
      <div class="claim-title">Misrouted &amp; Returned Cargo</div>
      <div class="claim-desc">Recovery of cargo sent to the wrong port node or address, including re-routing and redelivery coordination.</div>
    </div>
    <div class="claim-card">
      <div class="claim-icon" style="background:rgba(59,130,246,.12)">⚖️</div>
      <div class="claim-title">Customs &amp; Documentation Disputes</div>
      <div class="claim-desc">Our compliance desk works directly with customs authorities to resolve held shipments and documentation errors.</div>
    </div>
  </div>

  <!-- Process steps -->
  <div class="panel-title" style="font-family:var(--ff-disp);font-size:14px;font-weight:700;color:var(--white);margin-bottom:18px">How the Recovery Process Works</div>
  <div class="process-steps">
    <div class="pstep">
      <div class="pstep-num">01</div>
      <div class="pstep-title">Open a case</div>
      <div class="pstep-desc">Submit your tracking ID and describe the issue. No fee to open a case.</div>
    </div>
    <div class="pstep">
      <div class="pstep-num">02</div>
      <div class="pstep-title">Desk investigates</div>
      <div class="pstep-desc">A specialist contacts the carrier and relevant port node within 4 business hours.</div>
    </div>
    <div class="pstep">
      <div class="pstep-num">03</div>
      <div class="pstep-title">Updates &amp; evidence</div>
      <div class="pstep-desc">You receive status updates and can upload supporting documents or photos.</div>
    </div>
    <div class="pstep">
      <div class="pstep-num">04</div>
      <div class="pstep-title">Resolution</div>
      <div class="pstep-desc">Cargo is located/redelivered, or an insurance payout is processed to your original payment method.</div>
    </div>
  </div>
</section>

<!-- ══════════════════════════════════════════════
     LOYALTY & REFERRAL REWARDS
══════════════════════════════════════════════ -->
<section class="sec bg-navy">
  <div class="sec-num">07</div>
  <div class="sec-hdr">
    <div>
      <div class="sec-ey">Member Benefits</div>
      <h2>Loyalty &amp; Referral Rewards</h2>
    </div>
  </div>

  <div class="loyalty-grid">
    <div class="loyalty-main">
      <div style="font-family:var(--ff-disp);font-size:18px;font-weight:700;color:var(--white);margin-bottom:8px">Refer a business, earn account credit</div>
      <p style="font-size:13px;color:var(--slate);line-height:1.7;max-width:520px">Share your referral code with other shippers. When they complete their first paid shipment, you both receive account credit applied directly to your next invoice — no cash withdrawals, no investment claims, just credit toward shipping costs.</p>
      <div class="referral-box">
        <div>
          <div style="font-size:11px;color:var(--slate);margin-bottom:4px">Your referral code</div>
          <div class="ref-code">NVX-88REF-2026</div>
        </div>
        <button class="ref-copy">Copy Code</button>
      </div>
      <div style="display:flex;gap:32px;margin-top:24px">
        <div>
          <div class="rb-stat-v" style="font-size:20px">$25</div>
          <div class="rb-stat-l">Credit for you, per referral</div>
        </div>
        <div>
          <div class="rb-stat-v" style="font-size:20px">$25</div>
          <div class="rb-stat-l">Credit for your referral</div>
        </div>
        <div>
          <div class="rb-stat-v" style="font-size:20px">No limit</div>
          <div class="rb-stat-l">On number of referrals</div>
        </div>
      </div>
    </div>

    <div class="loyalty-main">
      <div style="font-family:var(--ff-disp);font-size:18px;font-weight:700;color:var(--white);margin-bottom:14px">Volume Loyalty Tiers</div>
      <div class="tier-row">
        <div class="tier-badge" style="background:rgba(148,163,184,.12)">🥉</div>
        <div>
          <div class="tier-name">Bronze</div>
          <div class="tier-desc">10+ shipments / quarter</div>
        </div>
        <div class="tier-pct">2% rebate</div>
      </div>
      <div class="tier-row">
        <div class="tier-badge" style="background:rgba(0,212,184,.12)">🥈</div>
        <div>
          <div class="tier-name">Silver</div>
          <div class="tier-desc">50+ shipments / quarter</div>
        </div>
        <div class="tier-pct">4% rebate</div>
      </div>
      <div class="tier-row">
        <div class="tier-badge" style="background:rgba(245,158,11,.12)">🥇</div>
        <div>
          <div class="tier-name">Gold</div>
          <div class="tier-desc">200+ shipments / quarter</div>
        </div>
        <div class="tier-pct">6% rebate</div>
      </div>
      <div class="tier-row">
        <div class="tier-badge" style="background:rgba(255,215,0,.12)">💎</div>
        <div>
          <div class="tier-name">Platinum</div>
          <div class="tier-desc">Level 14+ accounts</div>
        </div>
        <div class="tier-pct">8% rebate</div>
      </div>
      <p style="font-size:11px;color:var(--slate);margin-top:14px;line-height:1.6">Rebates are applied as account credit at the end of each billing quarter, automatically calculated from your shipment volume — no enrollment required.</p>
    </div>
  </div>
</section>

<!-- ══════════════════════════════════════════════
     SUPPORT
══════════════════════════════════════════════ -->
<section class="sec bg-steel" id="support">
  <div class="sec-num">08</div>
  <div class="sec-hdr">
    <div>
      <div class="sec-ey">Global Support Team</div>
      <h2>We're Here Around the Clock</h2>
    </div>
  </div>

  <div class="support-grid">

    <div class="sup-card">
      <span class="sup-icon">💬</span>
      <div class="sup-title">Live Chat</div>
      <div class="sup-desc">Connect instantly with a Nexvoya logistics specialist. Average response time under 90 seconds. Handles shipment queries, billing, and technical issues.</div>
      <a class="sup-btn" href="#">Start Live Chat →</a>
      <div class="sup-avail">Online now · 3 agents available</div>
    </div>

    <div class="sup-card">
      <span class="sup-icon">📞</span>
      <div class="sup-title">Phone Support</div>
      <div class="sup-desc">Speak directly with a senior support agent. Available on Level 06 and above. Multi-language support across 12 languages including English, Mandarin, Arabic, and German.</div>
      <a class="sup-btn" href="tel:+18884288880">+1 888 428 8880 →</a>
      <div class="sup-avail">Mon–Fri 06:00–22:00 UTC · Weekend emergency line</div>
    </div>

    <div class="sup-card">
      <span class="sup-icon">📧</span>
      <div class="sup-title">Email Support</div>
      <div class="sup-desc">Formal queries, documentation requests, and dispute resolution. All tickets acknowledged within 2 hours and resolved within 24–48 hours under SLA.</div>
      <a class="sup-btn" href="mailto:support@nexvoya.com">support@nexvoya.com →</a>
      <div class="sup-avail">SLA: 2h acknowledgement · 24h resolution</div>
    </div>

  </div>

  <!-- Contact Form + Info -->
  <div class="contact-panel">
    <div>
      <div class="sec-ey" style="margin-bottom:10px">Send a Message</div>
      <h2 style="margin-bottom:24px;font-size:22px">Contact our Support Team</h2>
      <div class="cf-row2">
        <div>
          <label class="cf-label">First Name</label>
          <input class="cf-input" type="text" placeholder="John">
        </div>
        <div>
          <label class="cf-label">Last Name</label>
          <input class="cf-input" type="text" placeholder="Meridian">
        </div>
      </div>
      <label class="cf-label">Company / Organisation</label>
      <input class="cf-input" type="text" placeholder="Meridian Trading Ltd.">
      <label class="cf-label">Email Address</label>
      <input class="cf-input" type="email" placeholder="john@meridiantrading.com">
      <label class="cf-label">Subject</label>
      <select class="cf-input" style="cursor:pointer">
        <option>Shipment Tracking Query</option>
        <option>Payment & Billing Issue</option>
        <option>Account Upgrade / Pricing</option>
        <option>Customs & Documentation</option>
        <option>Technical / API Support</option>
        <option>Store & Marketplace</option>
        <option>General Enquiry</option>
      </select>
      <label class="cf-label">Message</label>
      <textarea class="cf-textarea" rows="4" placeholder="Describe your query in detail. Include shipment IDs or invoice numbers if relevant."></textarea>
      <button class="cf-submit">Send Message →</button>
    </div>

    <div class="contact-info">
      <div class="ci-title">Direct Contact Details</div>

      <div class="ci-item">
        <div class="ci-ico">🌐</div>
        <div>
          <div class="ci-lbl">Global Headquarters</div>
          <div class="ci-val">One Nexvoya Tower, 88 Maritime Boulevard,<br>Singapore 018988</div>
        </div>
      </div>

      <div class="ci-item">
        <div class="ci-ico">📞</div>
        <div>
          <div class="ci-lbl">Main Phone Line</div>
          <div class="ci-val"><a href="tel:+6568888880">+65 6888 8880</a> — Singapore HQ</div>
        </div>
      </div>

      <div class="ci-item">
        <div class="ci-ico">📠</div>
        <div>
          <div class="ci-lbl">Regional Offices</div>
          <div class="ci-val">
            🇺🇸 <a href="tel:+18884288880">+1 888 428 8880</a> — North America<br>
            🇬🇧 <a href="tel:+442088880088">+44 20 8888 0088</a> — Europe<br>
            🇦🇪 <a href="tel:+97148888800">+971 4 888 8800</a> — Middle East
          </div>
        </div>
      </div>

      <div class="ci-item">
        <div class="ci-ico">📧</div>
        <div>
          <div class="ci-lbl">Email Addresses</div>
          <div class="ci-val">
            <a href="mailto:support@nexvoya.com">support@nexvoya.com</a><br>
            <a href="mailto:sales@nexvoya.com">sales@nexvoya.com</a><br>
            <a href="mailto:compliance@nexvoya.com">compliance@nexvoya.com</a>
          </div>
        </div>
      </div>

      <div class="team-strip">
        <div class="ts-label">Your dedicated support team</div>
        <div class="team-avatars">
          <div class="t-av" style="background:#1a3050">👩‍💼</div>
          <div class="t-av" style="background:#1a2840">👨‍💻</div>
          <div class="t-av" style="background:#1a3048">👩‍🔬</div>
          <div class="t-av" style="background:#182840">👨‍✈️</div>
          <div class="t-av" style="background:#1a2c48">👩‍🏭</div>
        </div>
        <div class="team-note"><strong>14 specialists</strong> online · avg. response 88 seconds</div>
      </div>
    </div>
  </div>
</section>

<!-- ══════════════════════════════════════════════
     FOOTER
══════════════════════════════════════════════ -->
<footer style="background:var(--navy);border-top:1px solid var(--border);padding:48px;display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:40px">
  <div>
    <div style="display:flex;align-items:center;gap:10px;font-family:var(--ff-disp);font-size:18px;font-weight:800;color:var(--white);margin-bottom:14px">
      <div style="width:30px;height:30px;background:var(--teal);border-radius:7px;display:flex;align-items:center;justify-content:center;font-size:14px">⬡</div>
      Nex<span style="color:var(--teal)">voya</span>
    </div>
    <p style="font-size:13px;color:var(--slate);line-height:1.7;max-width:280px">The world's first decentralized logistics-commerce platform. Connecting 140+ port nodes across 6 continents. Registered: Nexvoya Global Logistics Inc., Singapore.</p>
    <div style="display:flex;gap:10px;margin-top:18px">
      <div style="background:var(--card);border:1px solid var(--border);border-radius:6px;padding:5px 10px;font-family:var(--ff-mono);font-size:10px;color:var(--teal)">ISO 9001</div>
      <div style="background:var(--card);border:1px solid var(--border);border-radius:6px;padding:5px 10px;font-family:var(--ff-mono);font-size:10px;color:var(--teal)">PCI DSS</div>
      <div style="background:var(--card);border:1px solid var(--border);border-radius:6px;padding:5px 10px;font-family:var(--ff-mono);font-size:10px;color:var(--teal)">SOC 2</div>
    </div>
  </div>
  <div>
    <div style="font-family:var(--ff-disp);font-size:13px;font-weight:700;color:var(--white);margin-bottom:14px">Platform</div>
    <div style="display:flex;flex-direction:column;gap:9px">
      <a href="#store" style="font-size:13px;color:var(--slate);text-decoration:none">Store</a>
      <a href="#pricing" style="font-size:13px;color:var(--slate);text-decoration:none">Pricing Levels</a>
      <a href="#payments" style="font-size:13px;color:var(--slate);text-decoration:none">Payments</a>
      <a href="#" style="font-size:13px;color:var(--slate);text-decoration:none">API Docs</a>
      <a href="#" style="font-size:13px;color:var(--slate);text-decoration:none">Status Page</a>
    </div>
  </div>
  <div>
    <div style="font-family:var(--ff-disp);font-size:13px;font-weight:700;color:var(--white);margin-bottom:14px">Services</div>
    <div style="display:flex;flex-direction:column;gap:9px">
      <a href="#" style="font-size:13px;color:var(--slate);text-decoration:none">Ocean Freight</a>
      <a href="#" style="font-size:13px;color:var(--slate);text-decoration:none">Air Freight</a>
      <a href="#" style="font-size:13px;color:var(--slate);text-decoration:none">Digital Assets</a>
      <a href="#" style="font-size:13px;color:var(--slate);text-decoration:none">Customs Brokerage</a>
      <a href="#" style="font-size:13px;color:var(--slate);text-decoration:none">Node Portfolio</a>
    </div>
  </div>
  <div>
    <div style="font-family:var(--ff-disp);font-size:13px;font-weight:700;color:var(--white);margin-bottom:14px">Company</div>
    <div style="display:flex;flex-direction:column;gap:9px">
      <a href="#support" style="font-size:13px;color:var(--slate);text-decoration:none">Contact</a>
      <a href="#" style="font-size:13px;color:var(--slate);text-decoration:none">Privacy Policy</a>
      <a href="#" style="font-size:13px;color:var(--slate);text-decoration:none">Terms of Service</a>
      <a href="#" style="font-size:13px;color:var(--slate);text-decoration:none">AML Policy</a>
      <a href="#" style="font-size:13px;color:var(--slate);text-decoration:none">Cookie Settings</a>
    </div>
  </div>
</footer>
<div style="background:var(--navy);border-top:1px solid var(--border);padding:20px 48px;display:flex;justify-content:space-between;align-items:center;font-size:12px;color:var(--slate)">
  <span>© 2026 Nexvoya Global Logistics Inc. All rights reserved. UEN: 202688880G · Singapore</span>
  <span style="font-family:var(--ff-mono)">v4.18.88</span>
</div>

<!-- ══════════════════════════════════════════════
     JAVASCRIPT
══════════════════════════════════════════════ -->
<script>
// ── GLOBE ──
(function(){
  const cv=document.getElementById('globe');if(!cv)return;
  const ctx=cv.getContext('2d');
  const W=680,H=680,R=280,cx=W/2,cy=H/2;
  let angle=0,t=0;
  const cities=[[31.2,121.5,'SHA'],[51.9,4.5,'RTM'],[1.3,103.8,'SIN'],[33.9,-118.4,'LAX'],[40.7,-74,'NYC'],[51.5,-0.1,'LHR'],[25.2,55.4,'DXB'],[35.6,139.7,'TYO'],[-4,39.7,'MBA'],[19.1,72.9,'BOM'],[-33.9,151.2,'SYD'],[48.9,2.3,'CDG']];
  const routes=[[0,1],[0,2],[0,3],[1,5],[2,3],[3,4],[4,5],[5,6],[6,7],[7,2],[2,8],[8,1],[9,2],[10,3],[11,5]];
  function p3d(lat,lng,rot){const φ=lat*Math.PI/180,λ=(lng+rot)*Math.PI/180;return{x:Math.cos(φ)*Math.sin(λ),y:-Math.sin(φ),z:Math.cos(φ)*Math.cos(λ)}}
  function proj(p){return{x:cx+p.x*R,y:cy+p.y*R,vis:p.z>0}}
  function draw(){
    ctx.clearRect(0,0,W,H);
    const g=ctx.createRadialGradient(cx,cy,0,cx,cy,R);
    g.addColorStop(0,'rgba(0,212,184,.05)');g.addColorStop(1,'rgba(0,212,184,0)');
    ctx.fillStyle=g;ctx.beginPath();ctx.arc(cx,cy,R,0,Math.PI*2);ctx.fill();
    ctx.beginPath();ctx.arc(cx,cy,R,0,Math.PI*2);ctx.strokeStyle='rgba(0,212,184,.14)';ctx.lineWidth=1;ctx.stroke();
    for(let lat=-60;lat<=60;lat+=30){const φ=lat*Math.PI/180,r=Math.cos(φ)*R,yy=cy-Math.sin(φ)*R;if(r>0){ctx.beginPath();ctx.ellipse(cx,yy,r,r*.18,0,0,Math.PI*2);ctx.strokeStyle='rgba(0,212,184,.07)';ctx.lineWidth=1;ctx.stroke()}}
    for(let lng=0;lng<360;lng+=30){const λ=(lng+angle)*Math.PI/180;ctx.beginPath();for(let i=0;i<=60;i++){const φ=(-90+i*3)*Math.PI/180,x=cx+Math.cos(φ)*Math.sin(λ)*R,y=cy-Math.sin(φ)*R;i===0?ctx.moveTo(x,y):ctx.lineTo(x,y)}ctx.strokeStyle='rgba(0,212,184,.05)';ctx.lineWidth=1;ctx.stroke()}
    routes.forEach(([ai,bi])=>{const a3=p3d(cities[ai][0],cities[ai][1],angle),b3=p3d(cities[bi][0],cities[bi][1],angle);if(a3.z<-.3&&b3.z<-.3)return;const ap=proj(a3),bp=proj(b3);if(!ap.vis&&!bp.vis)return;const mx=(ap.x+bp.x)/2,my=(ap.y+bp.y)/2,cpx=mx+(cx-mx)*.25,cpy=my+(cy-my)*.25;ctx.beginPath();ctx.moveTo(ap.x,ap.y);ctx.quadraticCurveTo(cpx,cpy,bp.x,bp.y);ctx.strokeStyle='rgba(0,212,184,.2)';ctx.lineWidth=1.2;ctx.stroke()});
    const pi=Math.floor(t)%routes.length,fr=t%1,[ai2,bi2]=routes[pi];
    const a3=p3d(cities[ai2][0],cities[ai2][1],angle),b3=p3d(cities[bi2][0],cities[bi2][1],angle);
    if(a3.z>-.2||b3.z>-.2){const ap2=proj(a3),bp2=proj(b3),mx=(ap2.x+bp2.x)/2,my=(ap2.y+bp2.y)/2,cpx=mx+(cx-mx)*.25,cpy=my+(cy-my)*.25,tt=fr,ot=1-tt,px=ot*ot*ap2.x+2*ot*tt*cpx+tt*tt*bp2.x,py=ot*ot*ap2.y+2*ot*tt*cpy+tt*tt*bp2.y,g2=ctx.createRadialGradient(px,py,0,px,py,8);g2.addColorStop(0,'rgba(0,212,184,.9)');g2.addColorStop(1,'rgba(0,212,184,0)');ctx.fillStyle=g2;ctx.beginPath();ctx.arc(px,py,8,0,Math.PI*2);ctx.fill();ctx.fillStyle='#00D4B8';ctx.beginPath();ctx.arc(px,py,2.5,0,Math.PI*2);ctx.fill()}
    cities.forEach(([lat,lng,lbl])=>{const p=p3d(lat,lng,angle);if(p.z<0)return;const pp=proj(p);ctx.beginPath();ctx.arc(pp.x,pp.y,3.5,0,Math.PI*2);ctx.fillStyle='#00D4B8';ctx.fill();ctx.beginPath();ctx.arc(pp.x,pp.y,6,0,Math.PI*2);ctx.fillStyle='rgba(0,212,184,.18)';ctx.fill();ctx.fillStyle='rgba(248,250,252,.55)';ctx.font='10px JetBrains Mono,monospace';ctx.fillText(lbl,pp.x+8,pp.y+4)});
    angle+=.12;t+=.012;requestAnimationFrame(draw);
  }
  draw();
})();

// ── LIVE DASHBOARD TICKER ──
(function(){
  let shipments=142380, vessels=1847, alerts=34, sync=0;
  const fmt=n=>n.toLocaleString('en-US');
  function tick(){
    shipments += Math.floor(Math.random()*9)-2;
    vessels += Math.floor(Math.random()*3)-1;
    alerts = Math.max(20, alerts + (Math.random()<0.5?-1:1));
    sync = 0;
    const els=[
      ['lbShipments',fmt(shipments)],['kpiShipments',fmt(shipments)],
      ['lbVessels',fmt(vessels)],['kpiVessels',fmt(vessels)],
      ['lbAlerts',alerts],['kpiAlerts',alerts],
      ['lbOntime','98.4%']
    ];
    els.forEach(([id,val])=>{const el=document.getElementById(id);if(el)el.textContent=val});
    const sb=document.getElementById('lbSync');if(sb)sb.textContent='just now';
    const du=document.getElementById('dashUpdated');if(du)du.textContent='LIVE · UPDATED JUST NOW';
  }
  setInterval(tick,4000);

  // relative "ago" timestamps for sync label
  setInterval(()=>{
    sync++;
    const sb=document.getElementById('lbSync');
    if(sb && sync>0)sb.textContent=sync+'s ago';
    const du=document.getElementById('dashUpdated');
    if(du && sync>0)du.textContent='LIVE · UPDATED '+sync+'S AGO';
  },1000);

  
