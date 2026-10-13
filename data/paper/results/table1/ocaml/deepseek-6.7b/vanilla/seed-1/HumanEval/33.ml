let rec sort_third (l : int list) : int list =
  match l with
  | [] -> []
  | h::t -> (List.sort compare (List.filter (fun e -> e mod 3 = 0) l)) @
            (List.map (fun e -> if e mod 3 = 0 then List.nth (List.sort compare l) (e-1) else e) 
               (List.filter (fun e -> e mod 3 <> 0) (List.mapi (fun i _ -> i+1) l))) @ 
            (sort_third (List.filter (fun e -> e mod 3 = 0) l)) 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     This function takes a list l and returns a list l' such that *)
(*     l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal *)
(*     to the values of the corresponding indicies of l, but sorted. *)
(*     >>> sort_third [1; 2; 3] *)
(*     [1; 2; 3] *)
(*     >>> sort_third [5; 6; 3; 4; 8; 9; 2] *)
(*     [2; 6; 3; 4; 8; 9; 5] *)
