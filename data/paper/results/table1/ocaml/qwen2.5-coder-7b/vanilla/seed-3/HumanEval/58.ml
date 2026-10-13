let rec common (l1 : int list) (l2 : int list) : int list = 
  let rec helper seen rest = 
    match rest with
    | [] -> List.rev seen
    | x::xs -> if List.mem x l2 && not (List.mem x seen) then helper (x::seen) xs else helper seen xs
  in
  helper [] l1

let () =
  Printf.printf "%a\n" (Format.pp_print_list Format.pp_print_int) (common [1; 4; 3; 34; 653; 2; 5] [5; 7; 1; 5; 9; 653; 121]);
  Printf.printf "%a\n" (Format.pp_print_list Format.pp_print_int) (common [5; 3; 2; 8] [3; 2])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return sorted unique common elements for two lists. *)
(*     >>> common [1; 4; 3; 34; 653; 2; 5] [5; 7; 1; 5; 9; 653; 121] *)
(*     [1; 5; 653] *)
(*     >>> common [5; 3; 2; 8] [3; 2] *)
(*     [2; 3] *)
