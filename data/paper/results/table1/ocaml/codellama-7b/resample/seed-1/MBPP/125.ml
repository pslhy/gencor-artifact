(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
let rec find_length (string : string) : int =
match String.length string with
| 0 -> 0
| _ ->
    let num_zeros : int = String.count string ~f:(fun c -> c = '0') in
    let num_ones : int = String.count string ~f:(fun c -> c = '1') in
    max (num_ones - num_zeros) (num_zeros - num_ones)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:27: Unbound value "String.count" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_length (string : string) : int =
match String.length string with
| 0 -> 0
| _ ->
    let num_zeros : int = String.count string ~f:(fun c -> c = '0') in
    let num_ones : int = String.count string ~f:(fun c -> c = '1') in
    max (num_ones - num_zeros) (num_zeros - num_ones)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:27: Unbound value "String.count" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_length (string : string) : int =
match String.length string with
| 0 -> 0
| _ ->
    let num_zeros : int = String.make_count '0' (String.length string) in
    let num_ones : int = String.make_count '1' (String.length string) in
    max (num_ones - num_zeros) (num_zeros - num_ones)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:27: Unbound value "String.make_count" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_length (string : string) : int =
match String.length string with
| 0 -> 0
| _ ->
    let num_zeros : int = String.length (String.make "0" (String.length string)) in
    let num_ones : int = String.length (String.make "1" (String.length string)) in
    max (num_ones - num_zeros) (num_zeros - num_ones)

