(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
let rec toggle_middle_bits (n : int) : int =
  if n = 0 then 0
  else if n = 1 then 1
  else
    let next_bit = (n land 1) = 0 in
    let next_num = n lsr 1 in
    next_num lor (if next_bit then 1 else 0)

let rec toggle_all_bits (n : int) : int =
  if n = 0 then 0
  else if n = 1 then 1
  else
    let next_bit = (n land 1) = 0 in
    let next_num = n lsr 1 in
    next_num lor (if next_bit then 1 else 0)
    lor toggle_all_bits (next_num) in

let rec toggle_first_n_bits (n : int, first_n_bits : list<int>) : int =
  if n = 0 then 0
  else if n = 1 then 1
  else
    let next_bit = (n land 1) = 0 in
    let next_num = n lsr 1 in
    let remaining_bits = toggle_all_bits (next_num) in
    if List.exists (fun (first_n_bit : int) -> first_n_bit = next_bit) first_n_bits then
      next_num lor (if next_bit then 1 else 0)
    else
      remaining_bits lor (if next_bit then 1 else 0) in

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:36: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_middle_bits (n : int) : int =
  if n = 0 then
    0
  else if n = 1 then
    1
  else
    let next_bit = (n land 1) = 0 in
    let next_num = n lsr 1 in
    next_num lor (if next_bit then 1 else 0)
;;

let rec toggle_all_bits (n : int) : int =
  if n = 0 then
    0
  else if n = 1 then
    1
  else
    let next_bit = (n land 1) = 0 in
    let next_num = n lsr 1 in
    next_num lor (if next_bit then 1 else 0)
    lor toggle_all_bits (next_num)
;;

let rec toggle_first_n_bits (n : int, first_n_bits : list<int>) : int =
  if n = 0 then
    0
  else if n = 1 then
    1
  else
    let next_bit = (n land 1) = 0 in
    let next_num = n lsr 1 in
    let remaining_bits = toggle_all_bits (next_num) in
    if List.exists (fun (first_n_bit : int) -> first_n_bit = next_bit) first_n_bits then
      next_num lor (if next_bit then 1 else 0)
    else
      remaining_bits lor (if next_bit then 1 else 0)
;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:24:37: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_middle_bits (n : int) : int =
  if n = 0 then
    0
  else if n = 1 then
    1
  else
    let next_bit = (n land 1) = 0 in
    let next_num = n lsr 1 in
    next_num lor (if next_bit then 1 else 0)
    in
    toggle_middle_bits (next_num)
;;

let rec toggle_all_bits (n : int) : int =
  if n = 0 then
    0
  else if n = 1 then
    1
  else
    let next_bit = (n land 1) = 0 in
    let next_num = n lsr 1 in
    next_num lor (if next_bit then 1 else 0)
    lor toggle_all_bits (next_num)
;;

let rec toggle_first_n_bits (n : int, first_n_bits : list<int>) : int =
  if n = 0 then
    0
  else if n = 1 then
    1
  else
    let next_bit = (n land 1) = 0 in
    let next_num = n lsr 1 in
    let remaining_bits = toggle_all_bits (next_num) in
    if List.exists (fun (first_n_bit : int) -> first_n_bit = next_bit) first_n_bits then
      next_num lor (if next_bit then 1 else 0)
    else
      remaining_bits lor (if next_bit then 1 else 0)
;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:26:37: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_middle_bits (n : int) : int =
  if n = 0 then
    0
  else if n = 1 then
    1
  else
    let next_bit = (n land 1) = 0 in
    let next_num = n lsr 1 in
    next_num lor (if next_bit then 1 else 0)
    in
    toggle_middle_bits (next_num)
;;

let rec toggle_all_bits (n : int) : int =
  if n = 0 then
    0
  else if n = 1 then
    1
  else
    let next_bit = (n land 1) = 0 in
    let next_num = n lsr 1 in
    next_num lor (if next_bit then 1 else 0)
    lor toggle_all_bits (next_num)
;;

let rec toggle_first_n_bits (n : int, first_n_bits : list<int>) : int * list<int> =
  if n = 0 then
    (0, [])
  else if n = 1 then
    (1, [])
  else
    let next_bit = (n land 1) = 0 in
    let next_num = n lsr 1 in
    let remaining_bits = toggle_all_bits (next_num) in
    if List.exists (fun (first_n_bit : int) -> first_n_bit = next_bit) first_n_bits then
      (next_num lor (if next_bit then 1 else 0), remaining_bits)
    else
      (remaining_bits, next_num lor (if next_bit then 1 else 0))
;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:26:37: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_middle_bits (n : int) : int =
  if n = 0 then
    0
  else if n = 1 then
    1
  else
    let next_bit = (n land 1) = 0 in
    let next_num = n lsr 1 in
    next_num lor (if next_bit then 1 else 0)
    in
    toggle_middle_bits next_num
;;

let rec toggle_all_bits (n : int) : int =
  if n = 0 then
    0
  else if n = 1 then
    1
  else
    let next_bit = (n land 1) = 0 in
    let next_num = n lsr 1 in
    next_num lor (if next_bit then 1 else 0)
    lor toggle_all_bits next_num
;;

let rec toggle_first_n_bits (n : int, first_n_bits : list<int>) : int * list<int> =
  if n = 0 then
    (0, [])
  else if n = 1 then
    (1, [])
  else
    let next_bit = (n land 1) = 0 in
    let next_num = n lsr 1 in
    let remaining_bits = toggle_all_bits next_num in
    if List.exists (fun (first_n_bit : int) -> first_n_bit = next_bit) first_n_bits then
      (next_num lor (if next_bit then 1 else 0), remaining_bits)
    else
      (remaining_bits, next_num lor (if next_bit then 1 else 0))
;;

