import web

db_host = 'h7xe2knj2qb6kxal.cbetxkdyhwsb.us-east-1.rds.amazonaws.com	'
db_name = 'zzm76baeliq42r41'
db_user = 'eyc9tjkhjq94hldc'
db_pw = 'vrhhzsspsfjif4v7'

db = web.database(
    dbn='mysql',
    host=db_host,
    db=db_name,
    user=db_user,
    pw=db_pw
    )