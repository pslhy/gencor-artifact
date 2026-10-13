let rec parabola_directrix (a : int) (b : int) (c : int) : int =
  let delta = b ** 2 - 4 * a * c in
  if delta >= 0 then
    (-b +| sqrt delta) / (2 * a)
  else
    (-b) / (2 * a)

let test_parabola_directrix () =
  if (parabola_directrix 4 3 2) = 2 then
    "ok"
  else
    "not ok"

let () =
  test_parabola_directrix ()


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the directrix of a parabola. *)
