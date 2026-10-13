(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if the given number is woodball or not. *)
let rec is_woodall (x : int) : bool =
  if x < 2 then false else begin
    let num = x - 2 in
    let sqrt = float_of_int (int_of_float (sqrt (float_of_int x)) -. 1.) in
    let num_req = floor (sqrt) in
    if num_req >= 2 && x mod num_req = 0 then is_woodall num_req else false
  end
end

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_woodall (x : int) : bool =
  if x < 2 then false
  else
    let num = x - 2 in
    let sqrt = float_of_int (int_of_float (sqrt (float_of_int x)) -. 1.) in
    let num_req = floor (sqrt) in
    if num_req >= 2 && x mod num_req = 0 then is_woodall num_req else false
  end

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_woodall (x : int) : bool =
  if x < 2 then false
  else
    let num = x - 2 in
    let sqrt = float_of_int (int_of_float (sqrt (float_of_int x)) -. 1.) in
    let num_req = floor (sqrt) in
    if num_req >= 2 && x mod num_req = 0 then is_woodall num_req else false
end

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_woodall (x : int) : bool =
  if x < 2 then false
  else
    let num = x - 2 in
    let sqrt = float_of_int (int_of_float (sqrt (float_of_int x)) -. 1.) in
    let num_req = floor (sqrt) in
    if num_req >= 2 && x mod num_req = 0 then is_woodall num_req else false
end

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_woodall (x : int) : bool =
  if x < 2 then
    false
  else if x mod 2 = 0 then
    is_woodall (x / 2)
  else
    false
end

