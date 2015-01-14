# conding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/cookies'

set :bind, '0.0.0.0'

configure do
  enable :sessions
end

get '/' do
end

get '/getwild' do
  "#{params['get']} #{params['and']}"
@get = params['get']  
@and = params['and']
if @get =="wild" then
  if @and =="tough" then
   erb :wild
  end
elsif @get =="chance" then
  if @and == "luck" then
    erb :chance
  end
  else
  erb :index
end

end


__END__
@@index
<html>
<body>
  Getwild
 <form action="/getwild" method="get">
    <input type="text" name="get" value="wild">
    <input type="text" name="and" value="tough">
    <input type="submit">
 </form>
  Getchance
 <form action="/getwild" method="get">
    <input type="text" name="get" value="chance">
    <input type="text" name="and" value="luck">
    <input type="submit">
 </form>
</body>
</html>

@@wild
<html>
<script type="text/javascript" charset="utf-8">
getwild =["独りでは解けない愛のパズルを抱いて","この街でやさしさに甘えていたくはない","独りでは消せない痛み心に抱いて","この街で自由を持て余したくはない","独りでは解けない愛のパズルを抱いて","この街でやさしさに甘えていたくはない"];
if(!document.cookie){
  document.cookie="0";  
}else if(document.cookie=="6"){
  document.cookie="0";
}
  count = Number(document.cookie);
  document.write(getwild[count]);
  count++;
  document.cookie=count;
</script>
<body><br>
</html></body>

@@chance
<html>
<script type="text/javascript" charset="utf-8">
getchance =["君だけが守れるものがどこかにあるさ","ひとりでも傷ついた夢を取り戻すよ","君だけが守れるものを見つけ出したら","ひとりでも傷ついた夢を取り戻すよ","君だけが守れるものがどこかにあるさ","ひとりでも傷ついた夢を取り戻すよ"];
if(!document.cookie){
  document.cookie="0";  
}else if(document.cookie=="6"){
  document.cookie="0";
}
  count = Number(document.cookie);
  document.write(getchance[count]);
  count++;
  document.cookie=count;
</script>
<body><br>
</html></body>
