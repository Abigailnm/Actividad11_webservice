import web
db_host = 'localhost'
db_name = 'ferreteria_nema'
db_user = 'ferret'
db_pw = 'ferret.2019'
"""
db_host = 'gk90usy5ik2otcvi.cbetxkdyhwsb.us-east-1.rds.amazonaws.com'
db_name = 'j9gk65oe7j5df2be'
db_user = 'wneatin9hw8g62bh'
db_pw = 'zgznjrvcv6n3nq4d'
"""
db = web.database(
    dbn='mysql',
    host=db_host,
    db=db_name,
    user=db_user,
    pw=db_pw
    )