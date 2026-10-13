let rec convert (numbers : int) :  float * float =
  match numbers with
  | 0 -> 0.0, 0.0
  | n ->
    if n >= 1 then
      float n
    else
      float n

    let x = logr * cosr
    let y = logr * sinr
    (x, y)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert complex numbers to polar coordinates. *)
