const REQ_TIMEOUT_SHORT=1500,REQ_TIMEOUT_MEDIUM=5e3,REQ_TIMEOUT_LONG=9e3,BUFFER_TRIM_SIZE=131072,STATUS_REFRESH_INTERVAL=isWebInterface?1e3:5e3,SPINNER_HTML='<div class="txSpinner">Loading...</div>',anyUndefined=(...e)=>[...e].some((e=>void 0===e)),xss=e=>{let t=document.createElement("div");return t.innerText=e,t.innerHTML};document.addEventListener("DOMContentLoaded",(function(e){void 0!==$.notifyDefaults&&$.notifyDefaults({z_index:2e3,mouse_over:"pause",placement:{align:"center"},offset:{y:64}})}));const pfpList=document.getElementsByClassName("profile-pic");for(let e of pfpList)e.addEventListener("error",(()=>{"img/default_avatar.png"!=e.src&&(e.src="img/default_avatar.png")}));const checkDoLogoutRefresh=e=>!0===e.logout?(window.location="/auth?logout",!0):!0===e.refresh&&(window.location.reload(!0),!0),txAdminAPI=({type:e,url:t,data:o,dataType:n,timeout:d,success:i,error:a})=>!anyUndefined(e,t)&&(t=TX_BASE_PATH+t,d=d||5e3,i=i||(()=>{}),a=a||(()=>{}),$.ajax({type:e,url:t,timeout:d,data:o,dataType:n,success:i,error:a}));!function(){if(!isWebInterface)return;if(null===document.cookie.match(/(^| )txAdmin-darkMode=([^;]+)/))if(console.log("no theme cookie found"),window.matchMedia&&window.matchMedia("(prefers-color-scheme: dark)").matches)console.log("OS dark mode detected"),document.body.classList.toggle("theme--dark"),document.cookie="txAdmin-darkMode=true;path=/";else if("/"==window.location.pathname){const e=864e5;if(null===document.cookie.match(/(^| )txAdmin-darkModeSuggestion=([^;]+)/)){const t=new Date;t.setTime(t.getTime()+e);const o=document.getElementById("darkToggleArea"),n=new coreui.Tooltip(o,{container:"body",boundary:"window",offset:function(e){return[0,e.popper.height/3]}});setTimeout((()=>{n.show(),document.cookie=`txAdmin-darkModeSuggestion=true;expires=${t.toUTCString()};path=/`}),2e3)}}const e="d-none";let t=document.body.classList.contains("theme--dark");const o=document.getElementById("darkToggleDark"),n=document.getElementById("darkToggleLight");o.classList.toggle(e,t),n.classList.toggle(e,!t);const d=function(){document.body.classList.toggle("theme--dark"),o.classList.toggle(e),n.classList.toggle(e),t=!t,document.cookie=`txAdmin-darkMode=${t};path=/`};o.addEventListener("click",d),n.addEventListener("click",d)}();