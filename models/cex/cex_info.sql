{{ config(
        tags = [ 'static'],
        schema='cex',
        alias = 'info',
        post_hook='{{ expose_spells(\'["ethereum", "arbitrum", "avalanche_c", "bnb", "fantom", "optimism", "polygon", "zksync", "zora", "celo", "base"]\',
                                    "sector",
                                    "cex",
                                    \'["hildobby"]\') }}')
}}

SELECT cex_name, x_username
FROM (VALUES
        ('AAX', 'AAXExchange')
        , ('ABCC Exchange', 'ABCCExOfficial')
        , ('APROBIT', 'AprobitOfficial')
        , ('ATAIX', 'ATAIXcom')
        , ('Abra', 'AbraGlobal')
        , ('Aeroswap', NULL)
        , ('Alcumex Exchange', NULL)
        , ('Allbit', 'allbitofficial')
        , ('AlphaPo', NULL)
        , ('AltCoinTrader', 'AltCoinTraderSA')
        , ('AlterDice', 'alterdicecom')
        , ('Anchorage Digital', 'Anchorage')
        , ('Anycoin Direct', 'anycoindirect')
        , ('Artis Turba Exchange', 'ArtisTurba')
        , ('ArzPaya.com', 'ArzPaya')
        , ('AscendEX', 'AscendEX_')
        , ('AtomSolutions', NULL)
        , ('Azbit', 'azbit_news')
        , ('BTC Markets', 'BTCMarkets')
        , ('BTC-Alpha Exchange', 'btcalpha')
        , ('BTC-e', 'btcecom')
        , ('BTC.com', 'btccom_official')
        , ('BTCEX', 'BTCEX_exchange')
        , ('BTSE', 'BTSE_Official')
        , ('BW.com', 'BWOfficial2')
        , ('Beaxy', 'BeaxyExchange')
        , ('Beldex', NULL)
        , ('Bgogo', 'bgogoexchange')
        , ('BiKi', NULL)
        , ('Bibox', 'Bibox365')
        , ('Biconomy', 'BiconomyCom')
        , ('Bidesk', 'bideskcom')
        , ('BigONE', 'BigONEexchange')
        , ('Bilaxy', 'Bilaxy_exchange')
        , ('Binance', 'binance')
        , ('Binance US', 'BinanceUS')
        , ('BingX', 'BingXOfficial')
        , ('Bit-Z', NULL)
        , ('Bit2C', 'bit2c')
        , ('BitBase', 'BitBase_es')
        , ('BitBlinx', 'bitblinx')
        , ('BitForex', 'bitforexcom')
        , ('BitGo', 'BitGo')
        , ('BitKeep', 'BitkeepOS')
        , ('BitMEX', 'BitMEX')
        , ('BitMart', 'BitMartExchange')
        , ('BitPay', 'BitPay')
        , ('BitStorage', 'BitstorageFin')
        , ('BitUN.io', 'Official_bitun')
        , ('BitVenus', 'bitvenus_global')
        , ('Bitbank', 'bitbank_inc')
        , ('Bitbee', NULL)
        , ('Bitberry', 'BitberryF')
        , ('Bitbuy', 'bitbuy')
        , ('Bitci', 'bitcicomglobal')
        , ('Bitcoin Meester', 'meester_nl')
        , ('Bitcoin Suisse', 'BitcoinSuisseAG')
        , ('BiteBTC', NULL)
        , ('Bitexlive', 'bitexlive')
        , ('Bitfex.trade', 'BitFexTrade')
        , ('Bitfinex', 'bitfinex')
        , ('Bitfront', 'bitfront_global')
        , ('Bitget', 'bitgetglobal')
        , ('Bithumb', 'BithumbOfficial')
        , ('Bitkan', 'BitKanOfficial')
        , ('Bitkub', 'BitkubOfficial')
        , ('BitoPro', 'BitoEx_Official')
        , ('Bitpanda', 'Bitpanda_global')
        , ('Bitrefill', 'bitrefill')
        , ('Bitrue', 'BitrueOfficial')
        , ('Bitso', 'Bitso')
        , ('Bitstamp', 'Bitstamp')
        , ('Bitsten', 'BitstenExchange')
        , ('Bittrex', 'BittrexExchange')
        , ('Bitvavo', 'bitvavocom')
        , ('Bity', 'bity')
        , ('Bitzlato', 'bitzlato')
        , ('BloFin Exchange', 'BloFin_Official')
        , ('BlockFi', 'BlockFi')
        , ('BlockTrades', 'blocktradesus')
        , ('Blockchain.com', 'blockchain')
        , ('Bololex.com', 'bololexcom')
        , ('BtcTurk', 'btcturk')
        , ('Bullish', 'Bullish')
        , ('Bybit', 'Bybit_Official')
        , ('C-Patex', 'C_Patex')
        , ('C2CX', 'C2CXExchange')
        , ('CEX.IO', 'cex_io')
        , ('COSS Exchange', 'COSScrypto')
        , ('CREX24', 'crex_24')
        , ('Bake', 'bake_io')
        , ('Calypso Exchange', 'CalypsoExchange')
        , ('CamboChanger', 'CamboChanger')
        , ('Cashierest', 'cashierest')
        , ('Catex Exchange', 'catexofficial')
        , ('Celsuis', 'CelsiusNetwork')
        , ('ChainX', 'chainxofficial')
        , ('ChangeNOW', 'ChangeNOW_io')
        , ('Changelly', 'Changelly_team')
        , ('Cobinhood', 'COBINHOOD')
        , ('Cobo', 'Cobo_Global')
        , ('CoinBene', 'CoinBene')
        , ('CoinDCX', 'CoinDCX')
        , ('CoinDhan', 'coin_dhan')
        , ('CoinEgg', 'CoinEgg_LTD')
        , ('CoinEx', 'coinexcom')
        , ('CoinExchange', 'coinexchange_io')
        , ('CoinFLEX', 'CoinFLEXdotcom')
        , ('CoinField', 'CoinFieldEX')
        , ('CoinList', 'CoinList')
        , ('CoinSpot', 'coinspotau')
        , ('CoinTiger', 'CoinTigerEX')
        , ('CoinW', 'CoinWOfficial')
        , ('Coinbase', 'coinbase')
        , ('Coinbase Prime', 'coinbaseinsto')
        , ('Coincheck', 'coincheckjp')
        , ('Coindelta', 'coindelta_')
        , ('Coinhako', 'coinhako')
        , ('Coinify', 'coinify')
        , ('Coinjar', 'GetCoinJar')
        , ('Coinmetro', 'CoinMetro')
        , ('Coinone', 'CoinoneOfficial')
        , ('Coins.ph', 'coinsph')
        , ('CoinsPaid', 'coinspaid')
        , ('Coinsbit', 'c0insbit')
        , ('Coinsquare', 'Coinsquare')
        , ('Coinstore', 'CoinstoreExc')
        , ('Coinswitch', 'CoinSwitch')
        , ('Coinzix', 'coinzixcom')
        , ('Copper', 'CopperHQ')
        , ('Cryptal', 'Cryptalexchange')
        , ('Crypto.com', 'cryptocom')
        , ('Cryptonator', 'cryptonatorcom')
        , ('Cryptopia', 'Cryptopia_NZ')
        , ('DDEX', 'ddexio2018')
        , ('DEx.top', 'DExtop_official')
        , ('DIFX', 'DIFX_io')
        , ('DMEX', 'DMEX_finance')
        , ('Deepcoin', 'deepcoin_news')
        , ('Delta Exchange', 'Delta_Exchange')
        , ('Deribit', 'DeribitExchange')
        , ('Dex-Trade', 'dextrade_')
        , ('DigiFinex', 'DigiFinex')
        , ('Digital Surge', 'DigitalSurge')
        , ('Duelbits', 'Duelbits')
        , ('EXMO', 'Exmo_Com')
        , ('Eidoo', 'eidoo_io')
        , ('Eigen Fx', NULL)
        , ('Emirex', 'EMIREX_OFFICIAL')
        , ('Eterbase', 'ETERBASE')
        , ('FCoin', 'FCoinOfficial')
        , ('FINXFLO', 'Finxflo')
        , ('FTX', 'FTX_Official')
        , ('FTX US', NULL)
        , ('Faa.st', NULL)
        , ('Fairdesk', 'FairdeskGlobal')
        , ('FalconX', 'falconxnetwork')
        , ('FastEx', 'fastex')
        , ('Firi', 'firiapp')
        , ('FixedFloat', 'FixedFloat')
        , ('Flata Exchange', 'flataexchange')
        , ('Flybit', 'FlybitOfficial')
        , ('Folgory Exchange', 'folgory1')
        , ('Freewallet', 'freewalletorg')
        , ('GBX', 'GibBlockEx')
        , ('GDAC', 'official_gdac')
        , ('GGBTC.com', 'GGBTC_Official')
        , ('GMO Coin', 'gmo_coin')
        , ('GOPAX', 'GOPAX_kr')
        , ('Galaxy Digital', 'GalaxyDigital')
        , ('Gate.io', 'gate_io')
        , ('Gemini', 'Gemini')
        , ('Graviex', 'graviex_net')
        , ('HTX', 'HTX_Global')
        , ('HitBTC', 'hitbtc')
        , ('Hoo.com', 'Hoo_exchange')
        , ('Hotbit', 'Hotbit_news')
        , ('IDAX', 'IDAXpro')
        , ('IDEX', 'idexio')
        , ('Iconomi', 'iconomicom')
        , ('Incognito Chain', 'IncognitoChain')
        , ('IndoEx LTD', 'Indoex_LTD')
        , ('Indodax', 'indodax')
        , ('JPEX', 'ExchangeJpex')
        , ('Joyso', 'joyso_io')
        , ('Juno', 'JunoFinanceHQ')
        , ('Kanga Exchange', 'KangaExchange')
        , ('KickEX', 'kickexcom')
        , ('Klever', 'klever_io')
        , ('Korbit', 'korbit_official')
        , ('Kraken', 'krakenfx')
        , ('Kryptono', 'KryptonoEx')
        , ('KuCoin', 'kucoincom')
        , ('Kuna', 'KunaExchange')
        , ('LAToken', 'latokens')
        , ('LBank', 'LBank_Exchange')
        , ('LCX', 'lcx')
        , ('Lemon Cash', 'lemonapp_ar')
        , ('Liqui', NULL)
        , ('Liquid', 'Liquid_Global')
        , ('Livecoin.net', 'livecoin_net')
        , ('LordToken', 'LordToken_off')
        , ('Luno', 'LunoGlobal')
        , ('MAX Exchange', 'MAX_exch')
        , ('MEXC', 'mexc_global')
        , ('MaiCoin', 'mai_coin')
        , ('MaskEX', 'MaskEXGlobal')
        , ('Matrixport', 'realMatrixport')
        , ('Mercado Bitcoin', 'MercadoBitcoin')
        , ('Mercatox', 'Mercatox_info')
        , ('MinedTrade.com', NULL)
        , ('MoonPay', 'moonpay')
        , ('MultiBank Group', 'multibankgroup')
        , ('NDAX', 'ndaxio')
        , ('NEXBIT Pro', 'nexbitchain')
        , ('Netcoins', 'Netcoins')
        , ('Nexo', 'Nexo')
        , ('Nobitex', 'nobitexmarket')
        , ('Nominex', 'NominexExchange')
        , ('Norwegian Block Exchange', 'nbxcom')
        , ('OKX', 'okx')
        , ('OPNX', 'OPNX_Official')
        , ('OTCBTC', 'otcbtc')
        , ('OceanEx', 'OceanexOfficial')
        , ('Omgfin', 'omgfin')
        , ('Oobit', 'oobit')
        , ('Orionx', 'orionx')
        , ('Panda Exchange', 'exchange_panda')
        , ('Paribu', 'ParibuCom')
        , ('Paxos', 'Paxos')
        , ('PayKassa.pro', 'PaykassaP')
        , ('Paybis', 'paybis')
        , ('Peatio', NULL)
        , ('Phemex', 'Phemex_official')
        , ('PointPay', 'PointPay1')
        , ('Poloniex', 'Poloniex')
        , ('Prime Trust', 'PrimeTrustCo')
        , ('ProBit', 'ProBit_Exchange')
        , ('QMall', 'QmallExchange')
        , ('QuadrigaCX', 'QuadrigaCoinEx')
        , ('QuantaEx', 'QuantaEx')
        , ('Ramp Network', 'RampNetwork')
        , ('Remitano', 'remitano')
        , ('RenrenBit', 'renrenbit')
        , ('Revolut', 'RevolutApp')
        , ('Robinhood', 'RobinhoodApp')
        , ('Rollbit', 'rollbitcom')
        , ('Roobet', 'Roobet')
        , ('Shakepay', 'shakepay')
        , ('ShapeShift', 'ShapeShift')
        , ('Sideshift', 'sideshiftai')
        , ('SimpleSwap', 'SimpleSwap_io')
        , ('Simplex', 'SimplexCC')
        , ('SouthXchange', 'southxchange')
        , ('Sparrow', 'sparrowexchange')
        , ('Stake.com', 'Stake')
        , ('Steam Exchange', 'Steam_Exchange')
        , ('Stex', 'StexExchangeR')
        , ('Streamity', 'streamityorg')
        , ('SwissBorg', 'swissborg')
        , ('Switchain', 'switchaindotcom')
        , ('TAGZ', NULL)
        , ('TBCC Global', 'TBCC_ex')
        , ('Thodex', 'thodexglobal')
        , ('Tidex', 'Tidex_Exchange')
        , ('TokenMarket', 'tokenmarket')
        , ('Tokenize Xchange', 'TokenizeXchange')
        , ('Tokocrypto', 'Tokocrypto')
        , ('TopBTC', 'topbtc_exchange')
        , ('Trade.io', NULL)
        , ('TradeOgre', 'TradeOgre')
        , ('Transak', 'Transak')
        , ('Txbit', 'txbit_io')
        , ('Uex', 'uex_finance')
        , ('Upbit', 'upbitglobal')
        , ('Uphold', 'UpholdInc')
        , ('VinDAX', 'VinDAXOfficial')
        , ('Vinex', 'vinexnetwork')
        , ('Voyager', 'investvoyager')
        , ('WEX', 'WEXnz')
        , ('WOO Network', 'WOOnetwork')
        , ('WazirX', 'WazirXIndia')
        , ('WhiteBIT', 'WhiteBit')
        , ('Wirex', 'wirexapp')
        , ('XT.com Exchange', 'XTexchange')
        , ('YoBit', 'YobitExchange')
        , ('YouHodler', 'YouHodler')
        , ('Yunbi', 'yunbicom')
        , ('ZB.com', 'zbexchange')
        , ('Zipmex', 'zipmex')
        , ('Zonda', 'BitBayofficial')
        , ('bitFlyer', 'bitFlyerUSA')
        , ('eToro', 'eToro')
        , ('eXch.sc', NULL)
        , ('xs2.exchange', 'xs2exchange')
    ) AS temp_table (cex_name, x_username)