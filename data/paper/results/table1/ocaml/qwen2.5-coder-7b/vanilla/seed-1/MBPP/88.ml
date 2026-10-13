let rec freq_count (list1 : int list) : (int * int) list = 
  let rec count acc lst =
    match lst with
    | [] -> acc
    | h::t ->
       let found = List.exists (fun (x, _) -> x = h) acc in
       if found then
         let new_acc =List.map (fun (x, y) -> if x = h then (x, y + 1) else (x, y)) acc in
         count new_acc t
       else
         count ((h, 1) :: acc) t
  in
  count [] list1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get the frequency of all the elements in a list, returned as an association list. *)
