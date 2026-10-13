
let rec min_Jumps (steps :  int * int) (d : int) : float =
  if d = 0 then
    0
  else if d < 0 then
    raise (Failure "Negative values not valid!")
  else
    match steps with
      | (_, 0) ->
        raise (Failure "Invalid step size!")
      | (1, 1) ->
        d
      | (sx, sy) ->
        let x = d / sx in
        let y = d / sy in
        let z = min x y in
        min (z + 1) (min_Jumps (sx, sy) (d - sx) + 1)

let () =
  let steps = (3, 2) in
  let d = 10 in
  assert (min_Jumps steps d = 5)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane. *)
