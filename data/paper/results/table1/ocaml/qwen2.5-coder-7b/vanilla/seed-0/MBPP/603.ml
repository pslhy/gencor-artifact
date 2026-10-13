let rec get_ludic (n : int) : int list = 
  let is_multiple x y = (x mod y = 0) in
  let remove_multiples lst m = List.filter (fun x -> not (is_multiple x m)) lst in
  let rec build_ludics lst m =
    if m > n then lst
    else build_ludics (remove_multiples lst m) (List.nth lst (List.length lst)) in
  build_ludics (List.init n (fun x -> x + 1)) 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get all lucid numbers smaller than or equal to a given integer. *)
