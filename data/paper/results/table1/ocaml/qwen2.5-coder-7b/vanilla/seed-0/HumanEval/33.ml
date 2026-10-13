let rec sort_third (l : int list) : int list = 
  let rec sort_third_acc acc idx = function
    | [] -> List.rev acc
    | x::xs ->
        if idx mod 3 = 0 then
          sort_third_acc (x :: List.sort compare acc) (idx + 1) xs
        else
          sort_third_acc (x :: acc) (idx + 1) xs
  in
  sort_third_acc [] 0 l


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
