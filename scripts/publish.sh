while getopts d: flag
do
    case "${flag}" in
        d) directory=${OPTARG};;
    esac
done

cd ../memli-mobile-app
npx expo export
cd ../memli-updates-server
rm -rf updates/$directory/
cp -r ../memli-mobile-app/dist/ updates/$directory

node ./scripts/exportClientExpoConfig.js > updates/$directory/expoConfig.json