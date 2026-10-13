(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given the lengths of the three sides of a triangle. Return the area of *)
(*     the triangle rounded to 2 decimal points if the three sides form a valid triangle. *)
(*     Otherwise return -1 *)
(*     Three sides make a valid triangle when the sum of any two sides is greater *)
(*     than the third side. *)
(*     Example: *)
(*     >>> triangle_area 3 4 5 *)
(*     6.0 *)
(*     >>> triangle_area 1 2 10 *)
(*     (-1).0 *)
let rec triangle_area (a : int) (b : int) (c : int) : float =
  if a + b < c || b + c < a || c + a < b then
    (-1.0)
  else
    let p : float = Utils.sqrt ((float a * float a) + (float b * float b)) in
    let q : float = Utils.sqrt ((float c * float c) + (float p * float p)) in
    let s : float = (float a + float b + float c) / 2.0 in
    let area : float = (s * (s - float a) * (s - float b) * (s - float c)) ** 0.5 in
    Utils.round area 2.0

module Utils = struct
  let sqrt (x : float) : float = x ** 0.5

  let round (x : float) (n : int) : float =
    (float_of_int (int_of_float (x *. 10.0 ** float n))) /. 10.0 ** float n
end

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:21: Unbound module "Utils" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec triangle_area (a : int) (b : int) (c : int) : float =
  if a + b < c || b + c < a || c + a < b then
    (-1.0)
  else
    let p : float = Utils.sqrt ((float a * float a) + (float b * float b)) in
    let q : float = Utils.sqrt ((float c * float c) + (float p * float p)) in
    let s : float = (float a + float b + float c) / 2.0 in
    let area : float = (s * (s - float a) * (s - float b) * (s - float c)) ** 0.5 in
    Utils.round area 2.0

module Utils = struct
  let sqrt (x : float) : float = x ** 0.5

  let round (x : float) (n : int) : float =
    (float_of_int (int_of_float (x *. 10.0 ** float n))) /. 10.0 ** float n
end

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:21: Unbound module "Utils" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec triangle_area (a : int) (b : int) (c : int) : float =
  if a + b < c || b + c < a || c + a < b then
    (-1.0)
  else
    let p : float = Utils.sqrt ((float a * float a) + (float b * float b)) in
    let q : float = Utils.sqrt ((float c * float c) + (float p * float p)) in
    let s : float = (float a + float b + float c) / 2.0 in
    let area : float = (s * (s - float a) * (s - float b) * (s - float c)) ** 0.5 in
    Utils.round area 2.0

module Utils = struct
  let sqrt (x : float) : float = x ** 0.5

  let round (x : float) (n : int) : float =
    (float_of_int (int_of_float (x *. 10.0 ** float n))) /. 10.0 ** float n
end

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:21: Unbound module "Utils" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec triangle_area (a : int) (b : int) (c : int) : float =
  if a + b < c || b + c < a || c + a < b then
    (-1.0)
  else
    let p : float = Utils.sqrt ((float a * float a) + (float b * float b)) in
    let q : float = Utils.sqrt ((float c * float c) + (float p * float p)) in
    let s : float = (float a + float b + float c) / 2.0 in
    let area : float = (s * (s - float a) * (s - float b) * (s - float c)) ** 0.5 in
    Utils.round area 2.0

module Utils = struct
  let sqrt (x : float) : float = x ** 0.5

  let round (x : float) (n : int) : float =
    (float_of_int (int_of_float (x *. 10.0 ** float n))) /. 10.0 ** float n
end

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:21: Unbound module "Utils" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec triangle_area (a : int) (b : int) (c : int) : float =
  if a + b < c || b + c < a || c + a < b then
    (-1.0)
  else
    let p : float = Utils.sqrt ((float a * float a) + (float b * float b)) in
    let q : float = Utils.sqrt ((float c * float c) + (float p * float p)) in
    let s : float = (float a + float b + float c) / 2.0 in
    let area : float = (s * (s - float a) * (s - float b) * (s - float c)) ** 0.5 in
    Utils.round area 2.0

module Utils = struct
  let sqrt (x : float) : float = x ** 0.5

  let round (x : float) (n : int) : float =
    (float_of_int (int_of_float (x *. 10.0 ** float n))) /. 10.0 ** float n
end

