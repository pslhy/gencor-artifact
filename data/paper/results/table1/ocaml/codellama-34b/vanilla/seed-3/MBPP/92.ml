let rec is_undulating (n : int) : bool =
  if n < 10 then
    true
  else
    let l = string_of_int n in
    let rec loop i =
      if i = String.length l - 1 then
        true
      else if l.[i] <> l.[i+1] then
        false
      else
        loop (i+1)
    in
    loop 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
