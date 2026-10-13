let rec generate_integers (a : int) (b : int) : int list =
  if a = b then []
  else
    let (x, y) = (abs a, abs b) in
    let (r, _) = (x mod 2 = 0) && (y mod 2 = 0) in
    if r then
      let m = min x y in
      let n = max x y in
      let rec loop (i : int) =
        if i > n then []
        else if i mod 2 = 0 then i :: loop (i + 1)
        else loop (i + 1)
      loop m
    else []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given two positive integers a and b, return the even digits between a *)
(*     and b, in ascending order. *)
(*     For example: *)
(*     >>> generate_integers 2 8 *)
(*     [2; 4; 6; 8] *)
(*     >>> generate_integers 8 2 *)
(*     [2; 4; 6; 8] *)
(*     >>> generate_integers 10 14 *)
(*     [] *)
