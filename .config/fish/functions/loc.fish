# Defined in - @ line 1
function loc --wraps='cd /loc/$USER' --description 'alias loc=cd /loc/$USER'
  cd /loc/$USER $argv;
end
