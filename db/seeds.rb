Group.create!([
  { name: "HOFers" },
  { name: "Designated Hitters" },
  { name: "MVPs" },
  { name: "OGs" },
  { name: "Warehouse" },
])
League.create!([
  { league: "MLB" },
])
Team.create!([
  { name: "New York Mets", wins: 61, losses: 64, ties: 0, league_id: 1, division: "East", conference: "NL" },
  { name: "Washington Nationals", wins: 54, losses: 70, ties: 0, league_id: 1, division: "East", conference: "NL" },
  { name: "Miami Marlins", wins: 51, losses: 75, ties: 0, league_id: 1, division: "East", conference: "NL" },
  { name: "Milwaukee Brewers", wins: 77, losses: 49, ties: 0, league_id: 1, division: "Central", conference: "NL" },
  { name: "Cincinnati Reds", wins: 69, losses: 58, ties: 0, league_id: 1, division: "Central", conference: "NL" },
  { name: "St. Louis Cardinals", wins: 63, losses: 61, ties: 0, league_id: 1, division: "Central", conference: "NL" },
  { name: "Pittsburgh Pirates", wins: 46, losses: 80, ties: 0, league_id: 1, division: "Central", conference: "NL" },
  { name: "San Francisco Giants", wins: 81, losses: 44, ties: 0, league_id: 1, division: "West", conference: "NL" },
  { name: "Los Angeles Dodgers", wins: 79, losses: 47, ties: 0, league_id: 1, division: "West", conference: "NL" },
  { name: "San Diego Padres", wins: 68, losses: 59, ties: 0, league_id: 1, division: "West", conference: "NL" },
  { name: "Arizona Diamondbacks", wins: 42, losses: 85, ties: 0, league_id: 1, division: "West", conference: "NL" },
  { name: "Chicago Cubs", wins: 55, losses: 72, ties: 0, league_id: 1, division: "Central", conference: "NL" },
  { name: "Colorado Rockies", wins: 57, losses: 68, ties: 0, league_id: 1, division: "West", conference: "NL" },
  { name: "Tampa Bay Rays", wins: 78, losses: 48, ties: 0, league_id: 1, division: "East", conference: "AL" },
  { name: "New York Yankees", wins: 74, losses: 52, ties: 0, league_id: 1, division: "East", conference: "AL" },
  { name: "Boston Red Sox", wins: 72, losses: 55, ties: 0, league_id: 1, division: "East", conference: "AL" },
  { name: "Toronto Blue Jays", wins: 65, losses: 59, ties: 0, league_id: 1, division: "East", conference: "AL" },
  { name: "Baltimore Orioles", wins: 38, losses: 86, ties: 0, league_id: 1, division: "East", conference: "AL" },
  { name: "Chicago White Sox", wins: 73, losses: 54, ties: 0, league_id: 1, division: "Central", conference: "AL" },
  { name: "Cleveland Indians", wins: 61, losses: 62, ties: 0, league_id: 1, division: "Central", conference: "AL" },
  { name: "Detroit Tigers", wins: 61, losses: 66, ties: 0, league_id: 1, division: "Central", conference: "AL" },
  { name: "Kansas City Royals", wins: 56, losses: 69, ties: 0, league_id: 1, division: "Central", conference: "AL" },
  { name: "Minnesota Twins", wins: 54, losses: 71, ties: 0, league_id: 1, division: "Central", conference: "AL" },
  { name: "Houston Astros", wins: 74, losses: 52, ties: 0, league_id: 1, division: "West", conference: "AL" },
  { name: "Oakland Athletics", wins: 70, losses: 57, ties: 0, league_id: 1, division: "West", conference: "AL" },
  { name: "Seattle Mariners", wins: 69, losses: 58, ties: 0, league_id: 1, division: "West", conference: "AL" },
  { name: "Los Angeles Angels", wins: 63, losses: 64, ties: 0, league_id: 1, division: "West", conference: "AL" },
  { name: "Texas Rangers", wins: 44, losses: 81, ties: 0, league_id: 1, division: "West", conference: "AL" },
  { name: "Atlanta Braves", wins: 68, losses: 58, ties: 0, league_id: 1, division: "East", conference: "NL" },
  { name: "Philadelphia Phillies", wins: 63, losses: 62, ties: 0, league_id: 1, division: "East", conference: "NL" },
])
User.create!([
  { username: "Stan", email: "theman@example.com", password_digest: "$2a$12$G.XyS4K48h4WOqLrP2QW9.Z7vvHOy86HgJkr09EfrI4CO4/MnzTxK" },
  { username: "Babe", email: "ruth@example.com", password_digest: "$2a$12$8lS7M2RaC6Gbp0YCcPP2mujaddPNJqKn3S0p15HPMOpuws6FL/x6u" },
  { username: "reggie", email: "jackson@example.com", password_digest: "$2a$12$Xu6aaffA0DQ0UQuBANi.TOT6Yo1vZiTrxgmoA/PggdMuP4p.S9eNO" },
  { username: "ricky", email: "henderson@example.com", password_digest: "$2a$12$ciCEnyMwjovuh3mfAXGDa.RSG63eOVroPVstIWGQVjiYxmxcXXCwa" },
  { username: "willie", email: "mays@example.com", password_digest: "$2a$12$4wz2ObLoPI6aI7w1TIqXt.E4hUtaq8qtmEcUhY.n/f8581YwyHmGK" },
  { username: "edgar", email: "martinez@example.com", password_digest: "$2a$12$5LKhzqGB28m83srsL6lIgeW30WbAnCeipt9NM2b9WZ91R9IGY25na" },
  { username: "david", email: "ortiz@example.com", password_digest: "$2a$12$PCatCd8Nhv8evXxBpOV/IuBv.5SGij/R6.JFf0mKJsNIjAmedmNt6" },
  { username: "khris", email: "davis@example.com", password_digest: "$2a$12$ECIMX.ETeqe22KaRqpgiku6JQjRIp12T0usGhpiF132qOvZlP05N2" },
  { username: "giancarlo", email: "stanton@example.com", password_digest: "$2a$12$P4jE9WpLNYv.m4qHxQ5s8OWKq2.tTr9VuWjCLfQFdvhSD1nwyiz5G" },
  { username: "tom", email: "seaver@example.com", password_digest: "$2a$12$9NMn1snmqqPwyxqDgcvy0u2hfGo.RAw3ZVhtTwe28wojFpi/W8r42" },
  { username: "bryce", email: "harper@example.com", password_digest: "$2a$12$PynW5ZYciYr0/HfdFNp73OFF0K2h2ImNh6Whwoghe3i7o6vBJQkkS" },
  { username: "bill", email: "james@example.com", password_digest: "$2a$12$hSyOXdsmqVfub9R3//dleeZsVDxuxyQvQzIbhjysi9X4z1bdlTRiu" },
  { username: "matt", email: "chapman@example.com", password_digest: "$2a$12$PUhsuEbJ6R9c/18cjdv7H.Pov7M2p03l8Bf/ajGfdY5bTT6w7ofXm" },
  { username: "brittany", email: "talbott@example.com", password_digest: "$2a$12$UEnIsN4jwh53u41GFLGSO.Fi77bIiFv0BQ6MeJHLzn5HLa9q7fEX." },
  { username: "michael", email: "benz@example.com", password_digest: "$2a$12$Rnoo08jHCdb4dk3QA2ypDuh6KPIN88xhIx/e4faUc1w68izrBKVUm" },
  { username: "daniel", email: "bossier@example.com", password_digest: "$2a$12$nu0uB2Uh6kVFUyH9jiNUteycUASWz0d8dzcHyrUZEmI9dNIvEekBW" },
  { username: "jake", email: "baumbach@example.com", password_digest: "$2a$12$rGLhEPQfd2N8wQhmjzGJb.Y2PY/wfTuOzFCUIlqva0HHse26zKrdG" },
  { username: "robbie", email: "wachter@example.com", password_digest: "$2a$12$I2Nw.2B4TAdWKQckbWQD6OASCpYsQGpTC.KvapEI/id7YsiC5iFRW" },
  { username: "brandon", email: "bird@example.com", password_digest: "$2a$12$zPYXfELqTeueK88vC.PnL.vuh/DWGXRowdRkadbNsa7CEKnJyH0B6" },
  { username: "daniel2", email: "bossier2@example.com", password_digest: "$2a$12$3qbzx6aL40ySkbDw0mPq7etfPjcZmTuy8V9P67CdnVoye8WeMMrme" },
  { username: "kenny", email: "woods@example.com", password_digest: "$2a$12$mG3gaWkqgmFh1GdL9KPyy.JICSc0/4KcTn1hmo8bIzMZ6FCt3LNpy" },
  { username: "andy", email: "heuer@example.com", password_digest: "$2a$12$.fQykQ4FRLJEgLicvai2h.Uij59NOatUVLDf0YMaGF6ouJ/vchz4W" },
  { username: "keeyan", email: "majdi@example.com", password_digest: "$2a$12$rATjpJalw9KYPpRHMHRQWeOUNHjPRWuTURvwXbU.3rlDuTWA75.A." },
  { username: "greg", email: "basurta@example.com", password_digest: "$2a$12$O5Z9qY8FYpbDpx0UY69yNOiJLwn68T3W/6HjTldifqmm11FKVKf3e" },
  { username: "The Cure", email: "cureton@example.com", password_digest: "$2a$12$vmumP9GbFb5ZZOt0yFg8fOhsW63volCI6X4De3mzKPqqqyEgvwzk2" },
  { username: "miguel", email: "cabrera@example.com", password_digest: "$2a$12$2DLGXesN5clBbosKmI38O.8ZImnO1aNdy2awqEGXPJ8lMxA1bskyu" },
])

TeamUser.create!([
  { team_id: 1, user_id: 11 },
  { team_id: 30, user_id: 14 },
  { team_id: 29, user_id: 14 },
  { team_id: 15, user_id: 1 },
  { team_id: 2, user_id: 1 },
  { team_id: 8, user_id: 3 },
  { team_id: 13, user_id: 3 },
  { team_id: 23, user_id: 4 },
  { team_id: 10, user_id: 4 },
  { team_id: 17, user_id: 4 },
  { team_id: 20, user_id: 11 },
  { team_id: 19, user_id: 11 },
  { team_id: 16, user_id: 2 },
  { team_id: 27, user_id: 3 },
  { team_id: 3, user_id: 16 },
  { team_id: 22, user_id: 16 },
  { team_id: 9, user_id: 2 },
  { team_id: 14, user_id: 2 },
  { team_id: 25, user_id: 17 },
  { team_id: 10, user_id: 17 },
  { team_id: 5, user_id: 17 },
  { team_id: 2, user_id: 18 },
  { team_id: 1, user_id: 18 },
  { team_id: 4, user_id: 18 },
  { team_id: 9, user_id: 18 },
  { team_id: 20, user_id: 18 },
  { team_id: 15, user_id: 18 },
  { team_id: 28, user_id: 19 },
  { team_id: 16, user_id: 19 },
  { team_id: 6, user_id: 19 },
  { team_id: 22, user_id: 19 },
  { team_id: 14, user_id: 19 },
  { team_id: 3, user_id: 19 },
  { team_id: 27, user_id: 20 },
  { team_id: 12, user_id: 20 },
  { team_id: 10, user_id: 20 },
  { team_id: 26, user_id: 20 },
  { team_id: 21, user_id: 20 },
  { team_id: 17, user_id: 20 },
  { team_id: 11, user_id: 21 },
  { team_id: 23, user_id: 21 },
  { team_id: 18, user_id: 21 },
  { team_id: 19, user_id: 21 },
  { team_id: 24, user_id: 21 },
  { team_id: 7, user_id: 21 },
  { team_id: 27, user_id: 22 },
  { team_id: 25, user_id: 22 },
  { team_id: 17, user_id: 22 },
  { team_id: 4, user_id: 22 },
  { team_id: 23, user_id: 23 },
  { team_id: 2, user_id: 23 },
  { team_id: 14, user_id: 23 },
  { team_id: 8, user_id: 23 },
  { team_id: 28, user_id: 24 },
  { team_id: 21, user_id: 24 },
  { team_id: 29, user_id: 24 },
  { team_id: 7, user_id: 24 },
  { team_id: 13, user_id: 25 },
  { team_id: 12, user_id: 25 },
  { team_id: 1, user_id: 25 },
  { team_id: 24, user_id: 25 },
  { team_id: 19, user_id: 26 },
  { team_id: 18, user_id: 26 },
  { team_id: 20, user_id: 26 },
  { team_id: 3, user_id: 26 },
  { team_id: 10, user_id: 27 },
  { team_id: 11, user_id: 27 },
  { team_id: 26, user_id: 27 },
  { team_id: 9, user_id: 27 },
  { team_id: 6, user_id: 28 },
  { team_id: 16, user_id: 28 },
  { team_id: 30, user_id: 28 },
  { team_id: 22, user_id: 28 },
])
GroupUser.create!([
  { group_id: 1, user_id: 11 },
  { group_id: 2, user_id: 11 },
  { group_id: 3, user_id: 12 },
  { group_id: 6, user_id: 14 },
  { group_id: 8, user_id: 1 },
  { group_id: 7, user_id: 1 },
  { group_id: 1, user_id: 3 },
  { group_id: 2, user_id: 1 },
  { group_id: 1, user_id: 14 },
  { group_id: 7, user_id: 14 },
  { group_id: 1, user_id: 2 },
  { group_id: 3, user_id: 2 },
  { group_id: 1, user_id: 4 },
  { group_id: 3, user_id: 15 },
  { group_id: 1, user_id: 16 },
  { group_id: 9, user_id: 16 },
  { group_id: 10, user_id: 17 },
  { group_id: 11, user_id: 18 },
  { group_id: 11, user_id: 19 },
  { group_id: 11, user_id: 21 },
  { group_id: 11, user_id: 20 },
  { group_id: 12, user_id: 24 },
  { group_id: 12, user_id: 23 },
  { group_id: 12, user_id: 22 },
  { group_id: 12, user_id: 25 },
  { group_id: 12, user_id: 26 },
  { group_id: 12, user_id: 27 },
  { group_id: 12, user_id: 28 },
  { group_id: 10, user_id: 19 },
])
