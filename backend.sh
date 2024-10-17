# docker-compose's file
DC_FILE="../../../docker-compose.yml";
SQL_FILE="../../../../init.sql";

mkdir -p backend;
cd backend;
git clone https://github.com/saravia-developer/api-login-auth.git;

sleep 10;

cd api-login-auth;
npm install;
mkdir -p database;
cd database;
mkdir -p table;
cd table;

SQL_FINAL_PATH=".";
cp $SQL_FILE $SQL_FINAL_PATH/

cd ..;

DC_FINAL_PATH=".";
cp $DC_FILE $DC_FINAL_PATH/

ls;

if [ $? -eq 0 ]; then
    echo "Archivos copiados exitosamente a $DEST_FOLDER"
else
    echo "Error al copiar los archivos."
fi;

docker-compose up -d;

sleep 45;
cd ..;
npm run dev;