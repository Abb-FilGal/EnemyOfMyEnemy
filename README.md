# Enemy Of My Enemy
Enemy of my enemy är menat att vara ett 2D topdown rougelike där du som spelare är följare till en av många gudar. I början av varje "*run*" kommer du att "***pledge loyalty***" till en av gudarna. Till exempel naturens gud eller vädrets gudinna. Dessa bör representeras av gamla stenstatyer. När du svär loyalitet till en av dessa kommer du få ett mål som gynnar din valda gud samt gudens "**holy weapon**". Detta kan vara en blixt eller en stor träpinne som du slår med likt en slägga. Det finns två svårighetsgrader. **Cultism** och **GODMODE**. I cultism är ditt slutgiltiga mål att döda en profet till din guds motståndare. T.ex. om du valt vattengudinnan ska du mörda en profet för eldguden. I GODMODE är ditt mål att slåss mot motstående gud, **MEN** tanken är även att du ska ha möjligheten att få **hybris** och med detta slåss mot guden du har hyllat och gett din loyalitet till sedan början och därmed kanske ta dennas plats i ***godhome*** som den nya guden. 
Om du utför ditt uppdrag på GODMODE och dödar din guds rival kommer du ha två möjligheter. Att gå tillbaka och be till en ny gud eller att fortsätta mörda gudar tills du har slaktat hela *godhome.* Där spelet har sin *"anarchy ending"*. Detta betyder också att spelet inte kan hålla på i all evighet (Dock tack vare ökande svårighetsgrad i form av växande nummer när det kommer till hälsa, skada och antal kommer det vara svårt att ta sig dit.). Möjligtvis att man vid ett senare skede lägger till rematch mot bossarna då du har blivit så kraftfull och har så mycket hybris att du återupplivar dom för att döda dom igen. Så kul tycker du att det är!
När du har dödat en gud kommer dom att tappa sitt holy weapon vilket ger dig möjligheten att plocka upp det istället.
Inför varje gud kommer *"The dungeon"* vara fylld med kreatur som också ber till guden. Om du är påväg att döda vattengudinnan kan det vara små vattendroppar blandat med fiskar med treuddar. Om du kör GODMODE kommer det även finnas två minibossar innan guden. Detta är dom kultledare som du har som boss i cultism. Detta då GODMODE är det menade sättet att spela spelet på. 

Eftersom det är menat att vara en rougelike kommer det även finnas uppgraderingar att hitta i dom slumpmässigt generade hålorna. Dessa hålor kommer vara generade av förskapta rum som med en algoritm sätter ihop något som passar.

För att spelet ska vara återspelbart måste det finnas något sätt att återuppliva gudarna du har dödat när du själv dör. Man får etablera att när du dör återinställs de odödliga varelser du har förbannat till ***INSERT REALM NAME HERE***(Detta då du inte har dödat gudarna utan endast banlyst dom ett ett liv på vår jord som vanliga människor?).

Spelet kommer skapas i godot eftersom jag aldrig arbetat med det och vill lära mig något nytt.

## Technical

Dungeon generator
-

skapa border för map
placera spawn och bossrum
hitta lista med rum och dimensioner och antal dörrar
varje rum ska ha size i chunk (2X1) varje chunk är 4X4 tiles & position för dörrar
placera ett random rum ur array
check collision med border och andra rum och ta bort dörrar om dom gränsar border
OM dörr gränsar
	stäng och dörrar.count = dörrar.count - 1
upprepa X antal gånger
OM dörrar.count / 2 == 0
stäng en random dörr (inte spawn eller boss)
för varje dörr
	hitta närmaste dörr
	skapa en linje dit (debug)
	OM två dörrar sitter ihop
		öppna båda dörrar
	ANNARS
		bygg en tunnel mellan dessa

Checka så det finns en valid väg från spawn till bossrum
![firstdraft dungeon creator](https://github.com/Abb-FilGal/EnemyOfMyEnemy/assets/109916245/1821aa96-c36e-4c50-a837-3caff66e4e83)


## Gods
Kevin & Gustavsson - gods of day and night
-
sun cult
moon moon cult

small moons that roll towards you
BRUTE (moon theme)
archers with golden bows and rays of light
grenadier with sun grenades

SUN CANNON - slow bomb shooter
moon scythe  

FLASH - flashbang that stuns nearby enemies.
KAMEHAMEHA - ray of light.
MOON SHIELD - ORB that blocks projectiles.
 
Albin - god of war
-
Roman cult
Militia captain

foot soldier
bulky guy
sniper
Tank

AK-47
HEAVY SNIPER - slow shooting with collateral abilities

combat roll.
grenades.
drone support.

Sebastian - god of death
-
Vampires
Necromany guild

bats
Night terror - drains your energy making you move slower
Necromany wizard - can reincarnate skeletoins to protect themselves
shadow stalker - (payday 2 cloaker)

Stake launcher - launches stakes at enemies with increased damage against vampires
Reaper scythe - Swings fast creating ghostly effects peering out of it.

Soul scyphon - suck lifeforce out of nearby enemies, healing from it.
Reincarnate - reincarnate with 50% health **once** during a run, you can't change ability after you choose it.
Necrolord - reanimate four ravens who fight by your side for a short duration.

JOHN - god of fears
-
Big fucking spider 
Clown (circus supports)

snake
Giant hounds
Spiderling - shoots webs
Deep dark - fear of darkness as you see less and less

Darts of doubt - launch darts that inflict enemies with doubt, making them do less damage
chains - whip like weapon that knocks enemies back

Claustophobia - summon a spirit cage that traps enemies for a few seconds. 
Germ shield - cover yourself in germs that give you a temp shield. 
Haunt - teleports you to the nearest enemy within a radius and stun them breifly.

Gustnevsson - god of beasts (WIP)
-
Zoo Keeper
Gorillas

wolves
Grizzly bear
porcupine
Hercules beetle - XXXL size

Grizzly gauntlets
banana gun

Tortuise shell - turn into a tortuise and recive a large damage reduction.
giraff swipe - your neck grows large and you spin around the room
stampede - wild animals swarm the screen, stunning and damaging all it hits.
