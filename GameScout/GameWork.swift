//
//  GameWork.swift
//  GameScout
//
//  Created by Rishabh Sharma on 02/09/24.
//

import Foundation

struct GameWork : Hashable, Identifiable{
    let id =  UUID()
    
    var name : String
    var imageName :String
    var urlString : String
    var gameDescription: String
    var isFavorite: Bool = false
}

struct MockData{
    
    
    static let sampleGameWork = GameWork(name: "UFC5", imageName: "UFC5", urlString: "https://www.ea.com/games/ufc/ufc-5", gameDescription: "UFC 5 is an intense mixed martial arts (MMA) simulation game, delivering realistic and brutal combat within the octagon. Players can take control of their favorite UFC fighters, mastering a variety of martial arts techniques, including striking, grappling, and submissions. Featuring improved visuals, fluid animations, and lifelike damage systems, UFC 5 offers an authentic fight experience. The game includes multiple modes, such as career, online multiplayer, and knockout mode, challenging players to rise through the ranks and claim UFC championships while refining their skills and strategies in dynamic, high-stakes matches.")
    
    static let gameworks = [GameWork(name : "Need For Speed",
                                   imageName: "NFSIMAGE",
                                   urlString: "https://www.ea.com/en-gb/games/need-for-speed",
                                   gameDescription: "NFS Unbound is the latest installment in the renowned Need for Speed franchise. Set in the vibrant city of Lakeshore, the game blends realistic driving physics with an exhilarating street racing experience. Players can customize their cars with a unique graffiti-inspired art style and compete in high-stakes illegal races to climb the local scene's ranks. The gameplay emphasizes intense chases, tight drifting mechanics, and a thrilling open world filled with challenges, all while evading the ever-present police force. NFS Unbound delivers an adrenaline-fueled, visually striking take on the classic street racing formula."),
    GameWork(name: "BattelField2024", imageName: "Battlefield2024", urlString: "https://www.ea.com/en-gb/games/battlefield/battlefield-2042/", gameDescription: "Battlefield 2024** is an action-packed first-person shooter set in a near-future world of intense, large-scale warfare. Players engage in massive multiplayer battles across dynamic maps, utilizing advanced weapons, vehicles, and gadgets. The game features destructible environments, real-time weather effects, and a variety of modes, including the fan-favorite Conquest and new Hazard Zone. With customizable loadouts, squads, and strategic gameplay, Battlefield 2024 delivers a thrilling experience of all-out warfare, challenging players to adapt and dominate the battlefield."),
    
    GameWork(name: "F124", imageName: "F1-24", urlString: "https://www.ea.com/en-gb/games/f1/f1-24", gameDescription: "F1 24 is a realistic racing simulation game that puts players in the driver's seat of the world's fastest Formula 1 cars. Featuring all official teams, drivers, and circuits from the 2024 season, the game offers an immersive experience with stunning graphics and precise car handling. Players can compete in career mode, multiplayer, or time trials, mastering each track's nuances while fine-tuning their vehicles. With dynamic weather, updated rules, and advanced AI opponents, F1 24 captures the thrill and strategy of Formula 1 racing, offering a true-to-life motorsport experience."),
    
    GameWork(name: "UFC5", imageName: "UFC5", urlString: "https://www.ea.com/games/ufc/ufc-5", gameDescription: "UFC 5** is an intense mixed martial arts (MMA) simulation game, delivering realistic and brutal combat within the octagon. Players can take control of their favorite UFC fighters, mastering a variety of martial arts techniques, including striking, grappling, and submissions. Featuring improved visuals, fluid animations, and lifelike damage systems, UFC 5 offers an authentic fight experience. The game includes multiple modes, such as career, online multiplayer, and knockout mode, challenging players to rise through the ranks and claim UFC championships while refining their skills and strategies in dynamic, high-stakes matches."),
    
    GameWork(name: "MADDEN24", imageName: "MADDEN24", urlString: "https://www.ea.com/games/madden-nfl", gameDescription: "**Madden NFL 24** is a premier American football simulation game that brings the excitement of the NFL to life. Featuring updated rosters, authentic teams, and real-world stadiums, the game offers a deep and immersive football experience. With enhanced gameplay mechanics, including more realistic player movements, tackling, and AI decision-making, Madden 24 lets players feel the intensity of the gridiron. Whether you're building a dynasty in Franchise mode, competing online, or creating your own custom plays, Madden 24 delivers a comprehensive football experience for fans and newcomers alike."),
    GameWork(name: "PGA TOUR", imageName: "PGATOUR", urlString: "https://www.ea.com/games/ea-sports-pga-tour", gameDescription: "**PGA Tour** is an immersive golf simulation game that lets players experience the excitement of professional golf. Featuring realistic courses, official PGA Tour events, and a wide roster of pro golfers, the game offers detailed and lifelike gameplay. With precision controls, advanced ball physics, and dynamic weather conditions, players can test their skills across iconic courses in both solo and multiplayer modes. Whether you're competing in career mode, perfecting your swing in tournaments, or challenging friends online, PGA Tour delivers a comprehensive and authentic golfing experience for players of all skill levels."),
    
    GameWork(name: "GRID LEGENDS", imageName: "GridLegend", urlString: "https://www.ea.com/en-gb/games/grid/grid-legends", gameDescription: "GRID Legends** is a high-octane racing game that blends thrilling motorsport action with a cinematic story mode. Players can compete in a variety of racing disciplines, from street circuits to high-speed tracks, with a wide range of customizable cars. Featuring dynamic weather, intense rivalries, and dramatic on-track moments, the game offers an immersive racing experience. With both single-player and multiplayer modes, GRID Legends challenges players to rise through the ranks, create their own events, and compete in epic races across global locations. The game combines realistic driving physics with exciting, fast-paced gameplay."),
    
    GameWork(name: "Starwars Squadrons", imageName: "StarWars", urlString: "https://www.ea.com/games/starwars/squadrons", gameDescription: "Star Wars: Squadrons** is an immersive space combat game set in the iconic Star Wars universe. Players take control of starfighters from both the New Republic and the Empire, engaging in thrilling dogfights across the galaxy. The game features a single-player campaign with a rich storyline, as well as intense 5v5 multiplayer battles. With customizable ships, detailed cockpit controls, and strategic team-based gameplay, Star Wars: Squadrons offers a true-to-life starfighter experience. Whether flying X-Wings or TIE fighters, players must master their piloting skills to dominate the skies in this epic space combat adventure.")]
}
