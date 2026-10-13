
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
                        moveRight t (i + 1) j 
                    else 
                        let newCell = List.nth (List.nth path i) (j + 1) in 
                        moveRight (t +. (float_of_int newCell)) (i + 1) (j + 1) 
                    
                and moveDown t v : float = 
                    if i = List.length path - 1 || j = List.length (List.hd path) - 1 then 
                        moveDown t (v +. (float_of_int cell)) 
                    else 
                        let newRow = List.nth cost (i + 1) in 
                        let newCell = List.nth newRow j in 
                        moveDown (t +. (float_of_int newCell)) (v +. (float_of_int cell)) 
                    
                in 
                let rec helper (path : int list) i j : float option = 
                    match aux path i j with 
                    | None -> 
                        if i <= List.length path - 1 then 
                            helper path i (j + 1) 
                        else 
                            helper (path @ [cell]) (i + 1) j 
                    
                    | Some t -> Some t 
                    
                in 
                helper path i j 
            
            in 
            aux [cell] 0 0 
        
        in 
        
        (* main function to find maximum average *) 
        match max_float None (fun x y -> 
                match x, y with 
                | Some x, Some y -> 
                    if x > y then 
                        x 
                    else 
                        y 
                    
                | Some x, None -> x 
                | None, Some y -> y 
                | None, None -> raise (
                        Not_found "no maximum average found"
                    )
            ) (fun () -> 
                    List.map (fun row -> List.mapi (fun i c -> float_of_int c) row) (List.map (fun l -> List.rev l) (List.rev (List.tl ((List.rev (List.rev (List.map List.rev (List.tl ((List.rev (List.tl (List.rev (List.rev (List.rev (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.tl (List.

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
