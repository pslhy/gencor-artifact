(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
let rec maxAverageOfPath (cost : int list list) : float = 
    (* base case: a path with only one cell *) 
    if List.length cost = 1 then 
        let row = List.hd cost in 
        let cell = List.hd row in 
        (float_of_int cell) /. (float_of_int @@ List.length row) 
    
    else 
        let row = List.hd cost in 
        let cell = List.hd row in 
        let rec aux (path : int list) i j : float option = 
            (* base case: a path has reached the end of matrix *) 
            if i = List.length path - 1 && j = List.length (List.hd path) - 1 then 
                None 
            
            else 
                (* recursive case: try both moves and take the best path *) 
                let rec moveRight t i j : float = 
                    if i = List.length path - 1 || j = List.length (List.hd path) - 1 then 
                        moveDown t i j 
                    else 
                        let cell = List.nth (List.nth path i) j in 
                        moveRight (cell :: t) (i + 1) j 
                
                and moveDown t i j : float = 
                    if i = List.length path - 1 || j = List.length (List.hd path) - 1 then 
                        moveRight t i (j + 1) 
                    else 
                        let row = List.nth cost i in 
                        let cell = List.nth row j in 
                        moveDown (cell :: t) i (j + 1) 
                
                in 
                let path1 = try moveRight [cell] 1 0 with Exit -> moveRight [cell] 0 1 in 
                let path2 = try moveDown [cell] 0 1 with Exit -> moveDown [cell] 1 0 in 
                let rec maxOfPaths (path1 : float) (path2 : float) : float = 
                    match path1, path2 with 
                    | None, None -> None 
                    | None, Some x | Some x, None -> Some x 
                    | Some x, Some y -> Some (max x y) 
                    
                in 
                let path = List.tl path in 
                let rec auxRec (path : int list) i j : float option = 
                    match path with 
                    | h :: t -> aux [] i j 
                    | [] -> None 
                    
                in maxOfPaths (auxRec path 1 0) (auxRec path 0 1) 
            
        in 
        let rec maxOfPaths (path1 : float) (path2 : float) : float = 
            match path1, path2 with 
            | None, None -> None 
            | None, Some x | Some x, None -> Some x 
            | Some x, Some y -> Some (max x y) 
            
        in 
        let rec auxRec (path : int list) : float option = 
            match path with 
            | h :: t -> auxRec t 
            | [] -> None 
            
        in maxOfPaths (auxRec [cell] 1 0) (auxRec [cell] 0 1) 
    
let maxAverageOfPath cost = 
    let cost = List.map List.init cost in 
    let n = List.length cost in 
    let rec auxRec i : float option = 
        if i = n then 
            None 
        
        else 
            let row = List.nth cost i in 
            let rec moveX j : float option = 
                if j = n then 
                    None 
                
                else 
                    let cell = List.nth row j in 
                    moveX (j + 1) 
                    
            in 
            let rec moveY j : float option = 
                if j = n then 
                    None 
                
                else 
                    let row = List.nth cost j in 
                    let cell = List.nth row 0 in 
                    moveY (j + 1) 
                    
            in 
            maxOfPaths (auxRec (List.hd row)) (auxRec (List.hd (List.tl row))) 
            
    in maxOfPaths (auxRec (List.hd cost)) (auxRec (List.hd (List.tl cost))) 
    
let pathWithMaxAverageOfMatrix mat = 
    let (n, m) = (List.length mat, List.length (List.hd mat)) in 
    let rec maxOfPaths i j : float option = 
        if i = n || j = m then 
            None 
        
        else 
            let cell = List.nth (List.nth mat i) j in 
            maxOfPaths (i + 1) j 
            
    in 
    let rec auxRec i j path : float option = 
        if i = n || j = m then 
            None 
        
        else 
            let row = List.nth mat i in 
            let rec moveX j : float option = 
                if j = m then 
                    None 
                
                else 
                    let cell = List.nth row j in 
                    moveX (j + 1) 
                    
            in 
            let rec moveY j : float option = 
                if j = m then 
                    None 
                
                else 
                    let row = List.nth mat j in 
                    let cell = List.nth row 0 in 
                    moveY (j + 1) 
                    
            in 
            maxOfPaths (auxRec i (j + 1) path) (auxRec (i + 1) j path) 
            
    in 
    let rec maxOfPaths2 i j : float option = 
        if i = n || j = m then 
            None 
        
        else 
            let cell = List.nth (List.nth mat i) j in 
            maxOfPaths2 (i + 1) j 
            
    in 
    maxOfPaths2 0 0 
    
do (List.combine (List.initialize n 1) cost) @@@ List.combine (List.initialize m 1) cost) 

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:148:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec maxAverageOfPath (cost : int list list) : float =
  let n = List.length cost in
  let m = List.length (List.hd cost) in
  let rec aux i j =
    if i = n then 0.
    else if j = m then aux (i + 1) 0
    else (
      let cell = List.nth cost i in
      let value =
        if List.mem (List.nth cell j) cell then List.nth cell j
        else List.nth cell j - 1
      in
      if value <= 0 then value
      else value + aux (i + 1) (j + 1)
    )
  in
  aux 0 0

let pathWithMaxAverageOfMatrix mat =
  let n = List.length mat in
  let m = List.length (List.hd mat) in
  let rec aux i j =
    if i = n then 0.
    else if j = m then aux (i + 1) 0
    else (
      let cell = List.nth mat i in
      let value =
        if List.mem (List.nth cell j) cell then List.nth cell j
        else List.nth cell j - 1
      in
      if value <= 0 then value
      else value + aux (i + 1) (j + 1)
    )
  in
  aux 0 0

