let rec parabola_directrix (a : int) (b : int) (c : int) : int =
  let d = discriminant a b c in
  if d < 0 then
    0
  else
    let r = (d ** 0.5) / (2.0 * a) in
    if r > 0 then
      r
    else
      (-1) * r


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the directrix of a parabola. *)
