<!DOCTYPE html>
<html lang="ru">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>[[*pagetitle]]</title>
	<meta name="description" content="[[*meta_description]]">
	<meta name="keywords" content="">
	<link rel="stylesheet" href="/assets/css/main.min.css?v=1.0.5">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<base href="/">
	<link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon">
	<meta name="yandex-verification" content="ca112c737c740cfb" />
</head>

<body>
[[!addLooked?
	&templates = `20,36,18`
]]
{if $_modx->isAuthenticated()}
	[[!login_handler]]
{/if}

<header class="header">
	<div class="header__inner">
		<a href="#!" class="header__logo-url">
				<img
					src="assets/img/logo.jpg"
					alt="Толиман"
					class="header__logo"
					width="80"
					height="34"
				>
		</a>
		<mark class="header__licence">Лицензия №:20090</mark>
		<nav class="header__navigation">
			<a href="{$_modx->makeUrl(6)}" class="header__dropdown">
				Все курсы
				<svg class="header__dropdown-icon" width="12" height="12">
					<use xlink:href="#icon-arrow"></use>
				</svg>
			</a>
			<ul class="header__menu">
				<li class="header__menu-item">
					<a href="{$_modx->makeUrl(16)}" class="header__menu-item">О проекте</a>
				</li>
				<li class="header__menu-item">
					<a href="{$_modx->makeUrl(9)}" class="header__menu-item">Статьи</a>
				</li>
				<li class="header__menu-item">
					<a href="{$_modx->makeUrl(21)}" class="header__menu-item">Контакты</a>
				</li>
			</ul>
			{if $_modx->isAuthenticated()}
				<a href="{$_modx->makeUrl(98)}" class="header__profile-btn">
					<div class="header__profile-img-box">
						<img src="[[+modx.user.id:userinfo=`photo`:default=`assets/img/default-img.jpg?s=100`]]" alt="" class="header__profile-img">
					</div>
					<span class="header__user-name">{$_modx->user.id | userinfo: 'fullname'}</span>
				</a>
			{else}
				<button class="header__login-btn js--auth-popup-btn" type="button">
					<svg class="header__login-icon" width="24" height="24">
						<use xlink:href="#icon-enter"></use>
					</svg>
					Войти
				</button>
			{/if}
		</nav>
	</div>
</header>

<section class="profile">
	<div class="profile__inner">
		<aside class="profile__aside">
			<div class="profile__user-card">
				<div class="profile__user-img-box">
					<img src="[[+modx.user.id:userinfo=`photo`:default=`assets/img/default-img.jpg?s=100`]]" alt="" class="profile__user-img">
				</div>
				<p class="profile__user-name">{$_modx->user.id | userinfo: 'fullname'}</p>
			</div>
			<nav class="profile__navigation">
				<ul class="profile__menu">
					<li class="profile__menu-item">
						<svg class="profile__menu-icon" width="20" height="20">
							<use xlink:href="#icon-cart"></use>
						</svg>
						<a href="{$_modx->makeUrl(99)}" class="profile__menu-url">Корзина</a>
					</li>
					<li class="profile__menu-item">
						<svg class="profile__menu-icon" width="20" height="20">
							<use xlink:href="#icon-calendar"></use>
						</svg>
						<a href="{$_modx->makeUrl(100)}" class="profile__menu-url">Мое обучение</a>
					</li>
					<li class="profile__menu-item">
						<svg class="profile__menu-icon" width="20" height="20">
							<use xlink:href="#icon-package"></use>
						</svg>
						<a href="{$_modx->makeUrl(101)}" class="profile__menu-url">Доступные материалы</a>
					</li>
					<li class="profile__menu-item">
						<svg class="profile__menu-icon" width="20" height="20">
							<use xlink:href="#icon-time"></use>
						</svg>
						<a href="{$_modx->makeUrl(102)}" class="profile__menu-url">История заказов</a>
					</li>
					<li class="profile__menu-item">
						<svg class="profile__menu-icon" width="20" height="20">
							<use xlink:href="#icon-gear"></use>
						</svg>
						<a href="{$_modx->makeUrl(104)}" class="profile__menu-url">Настройки</a>
					</li>
					<li class="profile__menu-item">
						<svg class="profile__menu-icon" width="20" height="20"></svg>
						<a href="{$_modx->makeUrl(1)}?action=auth/logout" class="profile__menu-url">Выход</a>
					</li>
				</ul>
			</nav>
		</aside>
		<div class="profile__content">
			{block 'main'}{/block}
		</div>
	</div>
</section>







<footer class="footer">
	<div class="footer__inner">
		<form action="#!" method="post" class="footer__subscribe-form">
			<p class="footer__subscribe-title">Подписаться на новости:</p>
			<input type="text" class="footer__subscribe-input" placeholder="еmail">
			<button class="footer__subscribe-btn" type="button">Подписаться</button>
		</form>
		<div class="footer__bottom-box">
			<nav class="footer__navigation">
				<ul class="footer__menu">
					<li class="footer__menu-item">
						<a href="#!" class="footer__menu-url">Все курсы</a>
					</li>
					<li class="footer__menu-item">
						<a href="#!" class="footer__menu-url">О проекте</a>
					</li>
					<li class="footer__menu-item">
						<a href="#!" class="footer__menu-url">Статьи</a>
					</li>
					<li class="footer__menu-item">
						<a href="#!" class="footer__menu-url">Личный кабинет</a>
					</li>
					<li class="footer__menu-item">
						<a href="#!" class="footer__menu-url footer__menu-url--centered">Контакты</a>
						<ul class="footer__contacts-list">
							<li class="footer__contacts-item">
								<svg class="footer__contacts-item-icon" width="12" height="12">
									<use xlink:href="#icon-email"></use>
								</svg>
								<p class="footer__contacts-text">
									toliman1@mail.ru
								</p>
							</li>
							<li class="footer__contacts-item">
								<svg class="footer__contacts-item-icon" width="16" height="16">
									<use xlink:href="#icon-phone"></use>
								</svg>
								<p class="footer__contacts-text">
									+7(343) 319-13-62
								</p>
							</li>
						</ul>
					</li>
					<li class="footer__menu-item">
						<div class="footer__icons-box">
							<div class="footer__soc-box">
								<a href="#!" class="footer__soc-icon-url" aria-label="Ссылка на Instagram">
									<img src="assets/img/icon-instagram.svg" alt="Instagram" class="footer__soc-icon">
								</a>
								<a href="#!" class="footer__soc-icon-url" aria-label="Ссылка на Vk">
									<img src="assets/img/icon-vk.svg" alt="Vk" class="footer__soc-icon">
								</a>
								<a href="#!" class="footer__soc-icon-url" aria-label="Ссылка на YouTube">
									<img src="assets/img/icon-youtube.svg" alt="YouTube" class="footer__soc-icon">
								</a>
							</div>
							<div class="footer__payments-box">
								<img src="assets/img/icon-visa.jpg" alt="Visa" class="footer__payment-img">
								<img src="assets/img/icon-master-card.jpg" alt="MasterCard" class="footer__payment-img">
							</div>
						</div>
					</li>
				</ul>
			</nav>
		</div>
	</div>
</footer>

<script src="https://api-maps.yandex.ru/2.1/?apikey=ea935c89-e746-4efb-8860-b16da130ea77&lang=ru_RU" type="text/javascript"></script>
<script src="/assets/js/jquery.min.js"></script>
<script src="/assets/js/bundle.min.js?v=1.0.5"></script>
{block 'scripts'}{/block}

<svg style="display: none;">
	<defs>
		<symbol id="icon-arrow" viewBox="0 0 12 12"><polygon points="6 8.21 2.15 4.35 2.85 3.65 6 6.79 9.15 3.65 9.85 4.35 6 8.21" /></symbol>
		<symbol id="icon-enter" viewBox="0 0 24 24"><path d="M20.11,5.64a9,9,0,0,0-12.72,0l.7.71A8,8,0,0,1,19.41,17.66a8,8,0,0,1-11.32,0l-.7.71A9,9,0,1,0,20.11,5.64Z"/><path d="M11.71,14.83a.5.5,0,0,0,.71.71l3.18-3.18a.5.5,0,0,0,0-.71L12.42,8.47a.5.5,0,0,0-.71,0,.5.5,0,0,0,0,.7L14,11.5H1.25v1H14Z"/></symbol>
		<symbol id="icon-arrow-long" viewBox="0 0 42 8"><path d="M41.6,3.65,38.42.46a.51.51,0,0,0-.71,0,.51.51,0,0,0,0,.71L40,3.5H.25v1H40L37.71,6.83a.5.5,0,1,0,.71.71L41.6,4.35A.48.48,0,0,0,41.6,3.65Z" /></symbol>
		<symbol id="icon-play" viewBox="0 0 44 44"><path d="M41.05,11A22,22,0,0,0,11,3,22,22,0,0,0,3,33a22,22,0,0,0,30,8,22,22,0,0,0,8-30Zm0,16.1A19.7,19.7,0,0,1,4.94,31.85,19.72,19.72,0,0,1,22,2.29,20,20,0,0,1,27.1,3,19.71,19.71,0,0,1,41,27.1Z" /><path d="M32.55,19.92,18.41,11.76a2.4,2.4,0,0,0-3.59,2.08V30.16A2.37,2.37,0,0,0,16,32.24a2.39,2.39,0,0,0,2.39,0l14.14-8.16a2.4,2.4,0,0,0,0-4.16Zm-1.14,2.17L17.27,30.26a.1.1,0,0,1-.11,0,.12.12,0,0,1-.05-.1V13.84a.12.12,0,0,1,.05-.1h.11l14.14,8.17a.11.11,0,0,1,0,.18Z" /><path d="M35.52,11.55A17.31,17.31,0,0,0,24.29,5.07,1.15,1.15,0,1,0,24,7.34,15,15,0,0,1,33.71,13a1.13,1.13,0,0,0,.9.44,1.14,1.14,0,0,0,.7-.24A1.16,1.16,0,0,0,35.52,11.55Z" /></symbol>
		<symbol id="icon-phone" viewBox="0 0 16 16"><path d="M2,1.76,3.67.34,7.88,5,6.27,6.41c-.14,1,2.63,3.91,3.42,3.76.05-.06,1.58-1.4,1.58-1.4l4.27,4.67-1.7,1.48C9.12,18.82-2.57,5.93,2,1.76Zm1.55.52-.61.53c-3.11,2.86,6.75,13.73,10,11l.58-.5-2.36-2.59-.61.53C8.67,12.91,3.39,7.16,5.27,5.4l.6-.52Z"/></symbol>
		<symbol id="icon-email" viewBox="0 0 12 12"><path d="M0 1.5V10.5H12V1.5H0ZM10.759 2.5L6 6.3565L1.241 2.5H10.759ZM1 9.5V3.5915L6 7.6435L11 3.5915V9.5H1Z"/></symbol>
		<symbol id="icon-plus" viewBox="0 0 16 16"><path d="M6.47,9.41H1V6.59H6.47V.65h3V6.59H15V9.41H9.5v5.94h-3Z"/></symbol>
		<symbol id="icon-location" viewBox="0 0 16 16"><path d="M8,16.06l-.87-1.38C6,12.85,5,11.27,4.19,9.82A10.26,10.26,0,0,1,2.65,5.09,5.29,5.29,0,0,1,8,0a5.29,5.29,0,0,1,5.35,5.09,10.26,10.26,0,0,1-1.54,4.73c-.77,1.44-1.77,3-2.93,4.85ZM8,1.34A4,4,0,0,0,4,5.09a9.16,9.16,0,0,0,1.38,4.1C6.06,10.48,7,11.92,8,13.56c1-1.65,1.94-3.08,2.63-4.37A9.16,9.16,0,0,0,12,5.09,4,4,0,0,0,8,1.34ZM8,8.7a3.35,3.35,0,1,1,3.35-3.35A3.36,3.36,0,0,1,8,8.7ZM8,3.35a2,2,0,1,0,2,2A2,2,0,0,0,8,3.35Z"/></symbol>
		<symbol id="icon-vk" viewBox="0 0 40 40"><path d="M36 0H4C1.79086 0 0 1.79086 0 4V36C0 38.2091 1.79086 40 4 40H36C38.2091 40 40 38.2091 40 36V4C40 1.79086 38.2091 0 36 0Z"/><path d="M12.2815 14.0484C13.0492 15.8485 14.0222 17.5457 15.3037 19.0693C15.4736 19.2721 15.6879 19.4524 15.9136 19.5991C16.2433 19.8141 16.5543 19.7386 16.6884 19.3805C16.8301 19.0047 16.9602 18.2432 16.968 17.8487C16.9891 16.8176 16.9648 16.142 16.9065 15.1122C16.8687 14.4527 16.6217 13.8736 15.6 13.6988C15.2844 13.6446 15.2551 13.398 15.4578 13.152C15.8799 12.6398 16.4678 12.5582 17.1053 12.5259C18.1386 12.4729 19.1757 12.5161 20.2103 12.5259C20.6317 12.5295 21.0556 12.5618 21.4706 12.6477C22.0119 12.7597 22.3018 13.1203 22.391 13.622C22.4372 13.8808 22.4609 14.1469 22.4545 14.4088C22.4276 15.5342 22.3705 16.659 22.357 17.7838C22.3512 18.2253 22.3852 18.6778 22.4846 19.1077C22.6238 19.7069 23.0535 19.8574 23.4929 19.4244C24.0509 18.8745 24.5429 18.2558 25.0046 17.6273C25.8435 16.4843 26.4701 15.2298 27.0095 13.9364C27.2885 13.269 27.5021 13.124 28.2583 13.1222C29.6796 13.1191 31.1009 13.1179 32.5222 13.1222C32.7743 13.1234 33.0379 13.146 33.2758 13.2178C33.6619 13.3348 33.8152 13.6338 33.7248 14.0132C33.5137 14.9023 33.0077 15.658 32.4658 16.3846C31.596 17.5501 30.6846 18.6877 29.7944 19.8399C29.6809 19.9866 29.5809 20.1431 29.4878 20.3021C29.1549 20.8733 29.1781 21.1936 29.6636 21.6692C30.4364 22.4261 31.2638 23.1343 32.0123 23.912C32.5562 24.4778 33.0596 25.0916 33.4907 25.7377C34.0359 26.5549 33.6991 27.3247 32.6806 27.4617C32.0399 27.5476 28.9101 27.4623 28.7484 27.4617C27.9069 27.4581 27.1693 27.181 26.5753 26.6384C25.9147 26.0343 25.3144 25.3717 24.6801 24.7414C24.4889 24.5514 24.285 24.3693 24.065 24.2103C23.5461 23.8346 23.0368 23.918 22.7944 24.4966C22.5873 24.9935 22.4083 26.2985 22.3999 26.41C22.3563 26.9928 21.9657 27.3642 21.2781 27.4001C19.2931 27.5025 17.3696 27.2924 15.5776 26.3807C14.0588 25.6086 12.846 24.5167 11.7954 23.2433C10.1265 21.2208 8.80833 18.9976 7.60486 16.7091C7.54336 16.5921 6.32442 14.1294 6.29167 14.0131C6.18279 13.6236 6.28436 13.2515 6.63097 13.1234C6.84705 13.0436 10.8659 13.1231 10.9328 13.1265C11.574 13.1595 12.0113 13.4164 12.2815 14.0484Z" fill="white"/></symbol>
		<symbol id="icon-youtube" viewBox="0 0 40 40"><path d="M36 0H4C1.79086 0 0 1.79086 0 4V36C0 38.2091 1.79086 40 4 40H36C38.2091 40 40 38.2091 40 36V4C40 1.79086 38.2091 0 36 0Z"/><path d="M23.1065 25.6058C23.1056 25.4566 23.0617 25.3012 23.0064 25.1617C22.9327 24.9782 22.7747 24.887 22.5764 24.8676C22.3438 24.8448 22.1577 24.9387 21.9892 25.088C21.9216 25.1468 21.8909 25.2345 21.8909 25.2345L21.8944 29.9715V30.0883C21.8944 30.0883 21.9348 30.1427 21.9409 30.1497C22.0778 30.298 22.2376 30.4157 22.4421 30.4578C22.7791 30.5271 23.017 30.3867 23.0828 30.0742C23.0995 29.9961 23.1091 29.9154 23.1091 29.8355C23.1109 28.425 23.1135 27.0154 23.1065 25.6058ZM23.1065 25.6058C23.1056 25.4566 23.0617 25.3012 23.0064 25.1617C22.9327 24.9782 22.7747 24.887 22.5764 24.8676C22.3438 24.8448 22.1577 24.9387 21.9892 25.088C21.9216 25.1468 21.8909 25.2345 21.8909 25.2345L21.8944 29.9715V30.0883C21.8944 30.0883 21.9348 30.1427 21.9409 30.1497C22.0778 30.298 22.2376 30.4157 22.4421 30.4578C22.7791 30.5271 23.017 30.3867 23.0828 30.0742C23.0995 29.9961 23.1091 29.9154 23.1091 29.8355C23.1109 28.425 23.1135 27.0154 23.1065 25.6058ZM28.4105 18.4621C22.8046 18.3419 17.196 18.3419 11.5892 18.4621C9.64417 18.5034 8.08887 20.0938 8.08887 22.0397V30.7957C8.08887 32.7425 9.64417 34.3329 11.5892 34.3741C17.196 34.4944 22.8046 34.4944 28.4105 34.3741C30.3564 34.3329 31.9117 32.7425 31.9117 30.7957V22.0397C31.9117 20.0939 30.3564 18.5034 28.4105 18.4621ZM13.2358 31.5936H11.619V22.454H9.94523V20.9251H14.9131V22.4505H13.2358V31.5936ZM19.0216 27.8001V31.5944H17.5901V30.7272C17.5383 30.7825 17.5093 30.8124 17.4821 30.8431C17.174 31.1907 16.8247 31.4803 16.3788 31.6339C16.1612 31.7085 15.9374 31.734 15.7083 31.6945C15.3958 31.6427 15.186 31.4628 15.0596 31.1784C14.942 30.916 14.9122 30.6351 14.9113 30.3525C14.9078 29.308 14.9096 23.7802 14.9096 23.7266H16.3376C16.3402 23.7749 16.3455 27.743 16.3464 29.6784C16.3464 29.7837 16.3472 29.8917 16.3683 29.9944C16.421 30.2542 16.6202 30.3656 16.8704 30.2743C17.1583 30.169 17.3777 29.9707 17.562 29.7328C17.5892 29.6986 17.5892 29.6371 17.5892 29.588V23.7178L19.0216 23.7143C19.0216 23.7144 19.0216 26.4853 19.0216 27.8001ZM24.4678 30.8361C24.2765 31.4119 23.8552 31.705 23.2496 31.6989C22.7572 31.6945 22.3578 31.4988 22.0287 31.1415C21.9918 31.102 21.89 30.9941 21.89 30.9941V31.5927H20.4558V20.9241H21.89C21.89 22.0599 21.89 24.4358 21.89 24.4358C21.89 24.4358 21.9707 24.2743 22.0445 24.1909C22.2665 23.9425 22.5369 23.7503 22.8704 23.6661C23.4207 23.5283 24.0553 23.6985 24.3572 24.3419C24.5354 24.722 24.5854 25.1275 24.5854 25.54C24.5881 27.0312 24.5881 28.5224 24.5863 30.0137C24.5854 30.2928 24.5565 30.5685 24.4678 30.8361ZM29.7648 30.536C29.5164 31.2636 29.003 31.6674 28.2499 31.778C27.7829 31.8464 27.3204 31.8368 26.8824 31.6384C26.2829 31.3681 25.9433 30.8792 25.7976 30.2569C25.73 29.9672 25.6966 29.6636 25.6931 29.366C25.6817 28.1978 25.687 27.0287 25.6896 25.8604C25.6905 25.2495 25.8362 24.686 26.2548 24.2182C26.7323 23.6837 27.3432 23.4845 28.041 23.5292C28.2508 23.5424 28.4649 23.5766 28.6642 23.6425C29.3426 23.8654 29.7051 24.3736 29.8473 25.0477C29.9017 25.3075 29.9219 25.5769 29.9263 25.8429C29.9377 26.466 29.9219 27.8397 29.9219 27.8397H27.1756V29.8084C27.1756 30.1621 27.4617 30.4482 27.8154 30.4482C28.1683 30.4482 28.4544 30.1621 28.4544 29.8084V28.7964H29.9298C29.9298 28.7963 29.9518 29.9909 29.7648 30.536ZM28.4544 25.5137C28.4544 25.1609 28.1683 24.8739 27.8154 24.8739C27.4617 24.8739 27.1756 25.1609 27.1756 25.5137V26.6188H28.4544V25.5137ZM23.0064 25.1618C22.9327 24.9783 22.7747 24.887 22.5764 24.8677C22.3438 24.8449 22.1577 24.9388 21.9892 25.088C21.9216 25.1468 21.8909 25.2346 21.8909 25.2346L21.8944 29.9716V30.0884C21.8944 30.0884 21.9348 30.1428 21.9409 30.1498C22.0778 30.2981 22.2376 30.4157 22.4421 30.4579C22.7791 30.5272 23.017 30.3868 23.0828 30.0743C23.0995 29.9962 23.1091 29.9155 23.1091 29.8356C23.1109 28.4251 23.1135 27.0155 23.1065 25.6059C23.1056 25.4566 23.0617 25.3012 23.0064 25.1618Z" fill="white"/><path d="M26.6718 8.33737L26.6713 16.2582H25.2036L25.2054 15.4072C25.0431 15.5671 24.9046 15.7164 24.7524 15.8505C24.4826 16.0882 24.177 16.2654 23.8195 16.3353C23.2707 16.4427 22.8032 16.2692 22.6282 15.7007C22.5699 15.5114 22.5347 15.3074 22.5332 15.1097V8.33737H23.9899V14.3779C23.9899 14.4579 23.9963 14.5388 24.0103 14.6173C24.0545 14.8662 24.2385 14.9834 24.4782 14.9003C24.7704 14.7992 24.9933 14.5969 25.1825 14.3585C25.2093 14.3244 25.2045 14.2609 25.2045 14.2109V8.33737H26.6718Z" fill="white"/><path d="M14.5333 9.71379C14.2146 8.3708 13.5471 5.53571 13.5471 5.53571H11.877C11.877 5.53571 13.1602 9.79146 13.734 11.6894C13.7546 11.7581 13.7641 11.8326 13.7641 11.9045L13.7635 16.2565H15.3036L15.303 11.9045C15.303 11.8326 15.3125 11.7581 15.3331 11.6894C15.907 9.79146 17.1902 5.53571 17.1902 5.53571H15.52C15.52 5.53571 14.8524 8.3708 14.5339 9.71379H14.5333Z" fill="white"/><path d="M19.2002 8.13908C18.0395 8.13908 17.0986 9.07999 17.0986 10.2407V14.3535C17.0986 15.5142 18.0395 16.4551 19.2002 16.4551C20.3609 16.4551 21.3018 15.5142 21.3018 14.3535V10.2407C21.3019 9.07999 20.3609 8.13908 19.2002 8.13908ZM19.8067 14.4366C19.8067 14.771 19.5346 15.043 19.2003 15.043C18.866 15.043 18.5939 14.771 18.5939 14.4366V10.1576C18.5939 9.82315 18.866 9.55114 19.2003 9.55114C19.5346 9.55114 19.8067 9.82323 19.8067 10.1576V14.4366Z" fill="white"/></symbol>
		<symbol id="icon-instagram" viewBox="0 0 40 40"><rect x="6.25" y="6.25" width="27.5" height="27.5" fill="white"/><path d="M19.9996 16.0226C17.807 16.0226 16.0218 17.807 16.0218 19.9996C16.0218 22.193 17.807 23.9782 19.9996 23.9782C22.193 23.9782 23.9774 22.193 23.9774 19.9996C23.9774 17.807 22.193 16.0226 19.9996 16.0226ZM19.9996 16.0226C17.807 16.0226 16.0218 17.807 16.0218 19.9996C16.0218 22.193 17.807 23.9782 19.9996 23.9782C22.193 23.9782 23.9774 22.193 23.9774 19.9996C23.9774 17.807 22.193 16.0226 19.9996 16.0226ZM26.6263 9.53723H13.3737C11.2584 9.53723 9.53723 11.2584 9.53723 13.3737V26.6263C9.53723 28.7416 11.2584 30.4628 13.3737 30.4628H26.6263C28.7416 30.4628 30.4628 28.7416 30.4628 26.6263V13.3737C30.4628 11.2584 28.7416 9.53723 26.6263 9.53723ZM19.9996 26.8887C16.2017 26.8887 13.1113 23.7983 13.1113 19.9996C13.1113 16.2017 16.2017 13.1113 19.9996 13.1113C23.7983 13.1113 26.8887 16.2017 26.8887 19.9996C26.8887 23.7983 23.7983 26.8887 19.9996 26.8887ZM27.1099 14.5358C26.2111 14.5358 25.48 13.8047 25.48 12.9059C25.48 12.0071 26.2111 11.276 27.1099 11.276C28.0087 11.276 28.7398 12.0071 28.7398 12.9059C28.7398 13.8047 28.0087 14.5358 27.1099 14.5358ZM19.9996 16.0226C17.807 16.0226 16.0218 17.807 16.0218 19.9996C16.0218 22.193 17.807 23.9782 19.9996 23.9782C22.193 23.9782 23.9774 22.193 23.9774 19.9996C23.9774 17.807 22.193 16.0226 19.9996 16.0226ZM26.6263 9.53723H13.3737C11.2584 9.53723 9.53723 11.2584 9.53723 13.3737V26.6263C9.53723 28.7416 11.2584 30.4628 13.3737 30.4628H26.6263C28.7416 30.4628 30.4628 28.7416 30.4628 26.6263V13.3737C30.4628 11.2584 28.7416 9.53723 26.6263 9.53723ZM19.9996 26.8887C16.2017 26.8887 13.1113 23.7983 13.1113 19.9996C13.1113 16.2017 16.2017 13.1113 19.9996 13.1113C23.7983 13.1113 26.8887 16.2017 26.8887 19.9996C26.8887 23.7983 23.7983 26.8887 19.9996 26.8887ZM27.1099 14.5358C26.2111 14.5358 25.48 13.8047 25.48 12.9059C25.48 12.0071 26.2111 11.276 27.1099 11.276C28.0087 11.276 28.7398 12.0071 28.7398 12.9059C28.7398 13.8047 28.0087 14.5358 27.1099 14.5358ZM19.9996 16.0226C17.807 16.0226 16.0218 17.807 16.0218 19.9996C16.0218 22.193 17.807 23.9782 19.9996 23.9782C22.193 23.9782 23.9774 22.193 23.9774 19.9996C23.9774 17.807 22.193 16.0226 19.9996 16.0226ZM4 0C1.79086 0 0 1.79086 0 4V36C0 38.2091 1.79086 40 4 40H36C38.2091 40 40 38.2091 40 36V4C40 1.79086 38.2091 0 36 0H4ZM33.3733 26.6263C33.3733 30.3469 30.3469 33.3733 26.6263 33.3733H13.3737C9.65308 33.3733 6.62673 30.3469 6.62673 26.6263V13.3737C6.62673 9.65308 9.65308 6.62673 13.3737 6.62673H26.6263C30.3469 6.62673 33.3733 9.65308 33.3733 13.3737V26.6263ZM26.6263 9.53723H13.3737C11.2584 9.53723 9.53723 11.2584 9.53723 13.3737V26.6263C9.53723 28.7416 11.2584 30.4628 13.3737 30.4628H26.6263C28.7416 30.4628 30.4628 28.7416 30.4628 26.6263V13.3737C30.4628 11.2584 28.7416 9.53723 26.6263 9.53723ZM19.9996 26.8887C16.2017 26.8887 13.1113 23.7983 13.1113 19.9996C13.1113 16.2017 16.2017 13.1113 19.9996 13.1113C23.7983 13.1113 26.8887 16.2017 26.8887 19.9996C26.8887 23.7983 23.7983 26.8887 19.9996 26.8887ZM27.1099 14.5358C26.2111 14.5358 25.48 13.8047 25.48 12.9059C25.48 12.0071 26.2111 11.276 27.1099 11.276C28.0087 11.276 28.7398 12.0071 28.7398 12.9059C28.7398 13.8047 28.0087 14.5358 27.1099 14.5358ZM19.9996 16.0226C17.807 16.0226 16.0218 17.807 16.0218 19.9996C16.0218 22.193 17.807 23.9782 19.9996 23.9782C22.193 23.9782 23.9774 22.193 23.9774 19.9996C23.9774 17.807 22.193 16.0226 19.9996 16.0226ZM19.9996 16.0226C17.807 16.0226 16.0218 17.807 16.0218 19.9996C16.0218 22.193 17.807 23.9782 19.9996 23.9782C22.193 23.9782 23.9774 22.193 23.9774 19.9996C23.9774 17.807 22.193 16.0226 19.9996 16.0226ZM19.9996 16.0226C17.807 16.0226 16.0218 17.807 16.0218 19.9996C16.0218 22.193 17.807 23.9782 19.9996 23.9782C22.193 23.9782 23.9774 22.193 23.9774 19.9996C23.9774 17.807 22.193 16.0226 19.9996 16.0226ZM26.6263 9.53723H13.3737C11.2584 9.53723 9.53723 11.2584 9.53723 13.3737V26.6263C9.53723 28.7416 11.2584 30.4628 13.3737 30.4628H26.6263C28.7416 30.4628 30.4628 28.7416 30.4628 26.6263V13.3737C30.4628 11.2584 28.7416 9.53723 26.6263 9.53723ZM19.9996 26.8887C16.2017 26.8887 13.1113 23.7983 13.1113 19.9996C13.1113 16.2017 16.2017 13.1113 19.9996 13.1113C23.7983 13.1113 26.8887 16.2017 26.8887 19.9996C26.8887 23.7983 23.7983 26.8887 19.9996 26.8887ZM27.1099 14.5358C26.2111 14.5358 25.48 13.8047 25.48 12.9059C25.48 12.0071 26.2111 11.276 27.1099 11.276C28.0087 11.276 28.7398 12.0071 28.7398 12.9059C28.7398 13.8047 28.0087 14.5358 27.1099 14.5358ZM19.9996 16.0226C17.807 16.0226 16.0218 17.807 16.0218 19.9996C16.0218 22.193 17.807 23.9782 19.9996 23.9782C22.193 23.9782 23.9774 22.193 23.9774 19.9996C23.9774 17.807 22.193 16.0226 19.9996 16.0226ZM19.9996 16.0226C17.807 16.0226 16.0218 17.807 16.0218 19.9996C16.0218 22.193 17.807 23.9782 19.9996 23.9782C22.193 23.9782 23.9774 22.193 23.9774 19.9996C23.9774 17.807 22.193 16.0226 19.9996 16.0226ZM19.9996 16.0226C17.807 16.0226 16.0218 17.807 16.0218 19.9996C16.0218 22.193 17.807 23.9782 19.9996 23.9782C22.193 23.9782 23.9774 22.193 23.9774 19.9996C23.9774 17.807 22.193 16.0226 19.9996 16.0226ZM26.6263 9.53723H13.3737C11.2584 9.53723 9.53723 11.2584 9.53723 13.3737V26.6263C9.53723 28.7416 11.2584 30.4628 13.3737 30.4628H26.6263C28.7416 30.4628 30.4628 28.7416 30.4628 26.6263V13.3737C30.4628 11.2584 28.7416 9.53723 26.6263 9.53723ZM19.9996 26.8887C16.2017 26.8887 13.1113 23.7983 13.1113 19.9996C13.1113 16.2017 16.2017 13.1113 19.9996 13.1113C23.7983 13.1113 26.8887 16.2017 26.8887 19.9996C26.8887 23.7983 23.7983 26.8887 19.9996 26.8887ZM27.1099 14.5358C26.2111 14.5358 25.48 13.8047 25.48 12.9059C25.48 12.0071 26.2111 11.276 27.1099 11.276C28.0087 11.276 28.7398 12.0071 28.7398 12.9059C28.7398 13.8047 28.0087 14.5358 27.1099 14.5358ZM19.9996 16.0226C17.807 16.0226 16.0218 17.807 16.0218 19.9996C16.0218 22.193 17.807 23.9782 19.9996 23.9782C22.193 23.9782 23.9774 22.193 23.9774 19.9996C23.9774 17.807 22.193 16.0226 19.9996 16.0226Z"/></symbol>
		<symbol id="icon-gallery-arrow" viewBox="0 0 67 24"><path d="M66.75,10.5H5.37l7-7a1.5,1.5,0,1,0-2.12-2.12L.69,10.94a1.49,1.49,0,0,0,0,2.12l9.55,9.55a1.5,1.5,0,0,0,2.12-2.12l-7-7H66.75Z"/></symbol>
		<symbol id="icon-cart" viewBox="0 0 20 20"><path d="M20,2.61l-.62,1.67H17.77l-2.89,10h-11L0,5.11H14l-.47,1.67h-11L5,12.61h8.69l2.86-10ZM7.08,15.11a1.25,1.25,0,1,0,1.25,1.25A1.25,1.25,0,0,0,7.08,15.11Zm4.17,0a1.25,1.25,0,1,0,1.25,1.25,1.25,1.25,0,0,0-1.25-1.25"/></symbol>
		<symbol id="icon-calendar" viewBox="0 0 20 20"><path d="M15.33,15.68H12.67V13h2.66ZM11.33,9H8.67v2.67h2.66Zm4,0H12.67v2.67h2.66Zm-8,4H4.67v2.66H7.33Zm4,0H8.67v2.66h2.66Zm-4-4H4.67v2.67H7.33ZM18,3.68V18.35H2V3.68H4v.67a1.34,1.34,0,0,0,2.67,0V3.68h6.66v.67a1.34,1.34,0,0,0,2.67,0V3.68Zm-1.33,4H3.33V17H16.67ZM15.33,3a.66.66,0,0,0-.66-.66A.67.67,0,0,0,14,3V4.35a.66.66,0,0,0,.67.66.65.65,0,0,0,.66-.66ZM6,4.35A.66.66,0,0,1,5.33,5a.65.65,0,0,1-.66-.66V3a.66.66,0,0,1,.66-.66A.67.67,0,0,1,6,3Z"/></symbol>
		<symbol id="icon-time" viewBox="0 0 20 20"><path d="M10.4,2.4A7.47,7.47,0,0,0,3.84,6.24L2,4.4V9.6H7.2L5,7.36A6,6,0,0,1,16.4,10,6,6,0,0,1,4.72,12H3a7.62,7.62,0,0,0,15-2A7.65,7.65,0,0,0,10.4,2.4Zm-1.2,4v4.08L13,12.72l.64-1L10.4,9.76V6.4Z"/></symbol>
		<symbol id="icon-gear" viewBox="0 0 20 20"><path d="M10.05,7.71a2.34,2.34,0,1,0,2.34,2.34A2.32,2.32,0,0,0,10.05,7.71Zm0,3.74a1.41,1.41,0,1,1,1.4-1.4A1.44,1.44,0,0,1,10.05,11.45Z"/><path d="M16.88,8.27H16c-.1,0-.19,0-.19-.09a4,4,0,0,0-.38-.94.14.14,0,0,1,0-.19l.66-.65a1.07,1.07,0,0,0,0-1.59l-.94-.94a1.28,1.28,0,0,0-1.59,0L13,4.53h-.19c-.28-.1-.65-.28-.94-.38,0-.09-.09-.09-.09-.18V3.12A1.14,1.14,0,0,0,10.61,2H9.39A1.14,1.14,0,0,0,8.27,3.12V4c0,.1,0,.19-.09.19a4,4,0,0,0-.94.38c-.09.09-.09.09-.19,0L6.4,3.87a1.28,1.28,0,0,0-1.59,0l-.94.94a1.07,1.07,0,0,0,0,1.59l.66.65v.19a9.11,9.11,0,0,0-.38.94c-.09,0-.09.09-.19.09H3.12A1.14,1.14,0,0,0,2,9.39v1.22a1.14,1.14,0,0,0,1.12,1.12H4c.1,0,.19,0,.19.09a4,4,0,0,0,.38.94.14.14,0,0,1,0,.19l-.66.65a1.07,1.07,0,0,0,0,1.59l.94.94a1.28,1.28,0,0,0,1.59,0l.65-.66h.19a5.35,5.35,0,0,0,1.12.47v.94A1.14,1.14,0,0,0,9.49,18H10.7a1.06,1.06,0,0,0,1-1.12V16c0-.1,0-.19.09-.19a4,4,0,0,0,.94-.38c.09-.09.09-.09.19,0l.65.66a1.28,1.28,0,0,0,1.59,0l.94-.94a1.07,1.07,0,0,0,0-1.59L15.47,13v-.19a9.11,9.11,0,0,0,.38-.94c.09,0,.09-.09.18-.09h.85A1.14,1.14,0,0,0,18,10.61V9.39A1.14,1.14,0,0,0,16.88,8.27Zm.28,2.34a.21.21,0,0,1-.19.19h-.84a1.1,1.1,0,0,0-1,.74c-.09.28-.28.57-.37.85a1.14,1.14,0,0,0,.18,1.31l.66.65c.09,0,.09.09,0,.19l-.94.93c0,.1-.09.1-.19,0l-.65-.65a1.12,1.12,0,0,0-1.31-.19,3.47,3.47,0,0,1-.84.38,1,1,0,0,0-.75,1v.85a.2.2,0,0,1-.19.18H9.49a.2.2,0,0,1-.19-.18V15.57a.62.62,0,0,0-.38-.47,6,6,0,0,1-1.21-.47,1.24,1.24,0,0,0-.56-.09,1,1,0,0,0-.75.28l-.66.65c0,.1-.09.1-.18,0l-.94-.93c-.09,0-.09-.1,0-.19l.66-.65a1.14,1.14,0,0,0,.18-1.31,3.48,3.48,0,0,1-.37-.85,1,1,0,0,0-1-.74H3.22A.2.2,0,0,1,3,10.61V9.39a.2.2,0,0,1,.19-.19h.84a1.1,1.1,0,0,0,1-.74c.09-.28.28-.57.37-.85A1.12,1.12,0,0,0,5.27,6.3l-.65-.65c-.09,0-.09-.09,0-.19l.94-.93c0-.1.09-.1.18,0l.66.65a1.12,1.12,0,0,0,1.31.19A3.47,3.47,0,0,1,8.55,5,1,1,0,0,0,9.3,4V3.12a.2.2,0,0,1,.19-.18H10.7a.2.2,0,0,1,.19.18V4a1.09,1.09,0,0,0,.75,1c.28.1.56.28.84.38a1.31,1.31,0,0,0,1.31-.19l.65-.65c0-.1.1-.1.19,0l.94.93c.09,0,.09.1,0,.19l-.66.65a1.14,1.14,0,0,0-.18,1.31,3.48,3.48,0,0,1,.37.85,1,1,0,0,0,1,.74H17a.21.21,0,0,1,.19.19v1.22Z"/></symbol>
		<symbol id="icon-package" viewBox="0 0 20 20"><path d="M13.33,5V3.33a3.33,3.33,0,1,0-6.66,0V5H2.5V20h15V5ZM7.5,3.33a2.5,2.5,0,0,1,5,0V5h-5Zm8.33,15H4.17V6.67h2.5V7.92a.41.41,0,0,0,.41.41.41.41,0,0,0,.42-.41V6.67h5V7.92a.41.41,0,0,0,.42.41.41.41,0,0,0,.41-.41V6.67h2.5Z"/></symbol>
	</defs>
</svg>
</body>
</html>



