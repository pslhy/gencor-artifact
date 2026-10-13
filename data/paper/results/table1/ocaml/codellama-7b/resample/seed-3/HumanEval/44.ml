(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Change numerical base of input number x to base. *)
(*     return string representation after the conversion. *)
(*     base numbers are less than 10. *)
(*     >>> change_base 8 3 *)
(*     "22" *)
(*     >>> change_base 8 2 *)
(*     "1000" *)
(*     >>> change_base 7 2 *)
(*     "111" *)
let rec change_base (x : int) (base : int) : string =
  if x = 0 then
    "0"
  else
    let rem = x mod base in
    let result = change_base (x / base) base in
    if rem < 10 then
      string_of_int rem ^ result
    else
      let char = Char.chr (Int.of_int_exn (rem - 10 + Char.code 'a')) in
      char ^ result

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:28: Unbound value "Int.of_int_exn" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec change_base (x : int) (base : int) : string =
  if x = 0 then
    "0"
  else
    let rem = x mod base in
    let result = change_base (x / base) base in
    if rem < 10 then
      string_of_int rem ^ result
    else
      let char = Char.chr (Int.of_int_exn (rem - 10 + Char.code 'a')) in
      char ^ result

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:28: Unbound value "Int.of_int_exn" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec change_base (x : int) (base : int) : string =
  if x = 0 then
    "0"
  else
    let rem = x mod base in
    let result = change_base (x / base) base in
    if rem < 10 then
      string_of_int rem ^ result
    else
      let char = Char.chr (Int.of_int_exn (rem - 10 + Char.code 'a')) in
      char ^ result

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:28: Unbound value "Int.of_int_exn" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec change_base (x : int) (base : int) : string =
  if x = 0 then
    "0"
  else
    let rem = x mod base in
    let result = change_base (x / base) base in
    if rem < 10 then
      string_of_int rem ^ result
    else
      let char = Char.of_int rem in
      char ^ result

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:18: Unbound value "Char.of_int" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec change_base (x : int) (base : int) : string =
  if x = 0 then
    "0"
  else
    let rem = x mod base in
    let result = change_base (x / base) base in
    if rem < 10 then
      string_of_int rem ^ result
    else
      let char = Char.chr (rem + Char.code 'a' - 10) in
      char ^ result

