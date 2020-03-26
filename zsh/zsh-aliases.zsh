# Global aliases
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g C='| wc -l'
alias -g H='| head'
alias -g L="| less"
alias -g N="| /dev/null"
alias -g S='| sort'
alias -g G='| grep' # now you can do: ls foo G something

# Functions
#
# (f)ind by (n)ame
# usage: fn foo 
# to find all files containing 'foo' in the name
function fn() { ls **/*$1* }
alias -g kube="kubectl"
alias -g kubelive="kops export kubecfg platform.live-k8s.hellofresh.io --state s3://hf-kops-state"
alias -g kubestaging="kops export kubecfg platform.staging-k8s.hellofresh.io --state s3://hf-kops-state"
alias -g kubeahoy="kops export kubecfg platform.ahoy-k8s.hellofresh.io --state s3://hf-kops-state"
alias -g cache="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;"
alias -g saml="saml2aws"
alias -g samllive="saml2aws login -a live-admin --force; eval $(saml2aws script -a live-admin); ktx live-admin"
alias -g samlstaging="saml2aws login -a staging-admin --force; eval $(saml2aws script -a staging-admin); ktx staging-admin"
alias -g samlahoy="saml2aws login -a ahoy-basic --force; eval $(saml2aws script -a ahoy-basic); ktx ahoy-basic"
alias -g renew="sudo ipconfig set en0 BOOTP && sudo ipconfig set en0 DHCP"
