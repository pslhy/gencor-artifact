(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the directrix of a parabola. *)
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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:11: Unbound value "discriminant" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec parabola_directrix (a : int) (b : int) (c : int) : int =
  if discriminant a b c < 0 then
    0
  else
    let discriminant = (b ** 2.0) - (4.0 * a * c) in
    let r = (discriminant ** 0.5) / (2.0 * a) in
    if r > 0 then
      r
    else
      (-1) * r

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:6: Unbound value "discriminant" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec parabola_directrix (a : int) (b : int) (c : int) : int =
  if discriminant a b c < 0 then
    0
  else
    let discriminant = (b ^ 2.0) - (4.0 * a * c) in
    let r = (discriminant ^ 0.5) / (2.0 * a) in
    if r > 0 then
      r
    else
      (-1) * r

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:6: Unbound value "discriminant" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec parabola_directrix (a : int) (b : int) (c : int) : int =
  if discriminant a b c < 0 then
    0
  else
    let discriminant = (b * b) - (4.0 * a * c) in
    let r = (discriminant ** 0.5) / (2.0 * a) in
    if r > 0 then
      r
    else
      (-1) * r

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:6: Unbound value "discriminant" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec parabola_directrix (a : int) (b : int) (c : int) : int =
  if a = 0 then
    if b = 0 then
      if c = 0 then
        None
      else
        Some 0
    else
      Some (-c / b)
  else
    let discriminant = (b * b) - (4.0 * a * c) in
    if discriminant >= 0 then
      Some
        (((-b - (discriminant ** 0.5)) / (2.0 * a)) +
         ((-b + (discriminant ** 0.5)) / (2.0 * a)))
    else
      None

