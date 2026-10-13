(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float =
  if n = 0 then
    failwith "Lists must have same size"
  else if n = 1 then
    float_of_int (List.nth arr1 0 + List.nth arr2 0) /. 2.0
  else
    let mid_index = n/2 in
    if List.nth arr1 mid_index > List.nth arr2 mid_index then
      get_median (List.sub arr1 0 mid_index) (List.sub arr2 mid_index n) n
    else
      get_median (List.sub arr2 0 mid_index) (List.sub arr1 mid_index n) n

let find_median_of_two_lists (arr1 : int list) (arr2 : int list) : float =
  let n = List.length arr1 in
  let m = List.length arr2 in
  if n <> m then
    failwith "Both lists must be of same size"
  else
    get_median arr1 arr2 n

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:19: Unbound value "List.sub" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float =
  if n = 0 then
    failwith "Lists must have same size"
  else if n = 1 then
    float_of_int (List.nth arr1 0 + List.nth arr2 0) /. 2.0
  else
    let mid_index = n/2 in
    if List.nth arr1 mid_index > List.nth arr2 mid_index then
      get_median (List.sub arr1 0 mid_index) (List.sub arr2 mid_index n) mid_index
    else
      get_median (List.sub arr2 0 mid_index) (List.sub arr1 mid_index n) mid_index

let find_median_of_two_lists (arr1 : int list) (arr2 : int list) : float =
  let n = List.length arr1 in
  let m = List.length arr2 in
  if n <> m then
    failwith "Both lists must be of the same size"
  else
    get_median arr1 arr2 n

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:19: Unbound value "List.sub" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float =
  if n = 0 then
    failwith "Lists must have same size"
  else if n = 1 then
    float_of_int (List.nth arr1 0 + List.nth arr2 0) /. 2.0
  else
    let mid_index = n/2 in
    if List.nth arr1 mid_index > List.nth arr2 mid_index then
      get_median (List.sub arr1 0 mid_index) (List.sub arr2 0 mid_index) mid_index
    else
      get_median (List.sub arr1 0 mid_index) (List.sub arr2 0 mid_index) mid_index

let find_median_of_two_lists (arr1 : int list) (arr2 : int list) : float =
  let n = List.length arr1 in
  let m = List.length arr2 in
  if n <> m then
    failwith "Both lists must be of the same size"
  else
    get_median arr1 arr2 n

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:19: Unbound value "List.sub" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float =
  if n = 0 then
    failwith "Lists must have same size"
  else if n = 1 then
    float_of_int (List.nth arr1 0 + List.nth arr2 0) /. 2.0
  else
    let mid_index = n/2 in
    if List.nth arr1 mid_index > List.nth arr2 mid_index then
      get_median (List.sub arr1 0 mid_index) (List.sub arr2 0 mid_index) mid_index
    else
      get_median (List.sub arr1 0 mid_index) (List.sub arr2 0 mid_index) mid_index

let find_median_of_two_lists (arr1 : int list) (arr2 : int list) : float =
  let n = List.length arr1 in
  let m = List.length arr2 in
  if n <> m then
    failwith "Lists must have same size"
  else
    get_median arr1 arr2 n

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:19: Unbound value "List.sub" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float =
  if n = 0 then
    failwith "Lists must have same size"
  else if n = 1 then
    float_of_int (List.nth arr1 0 + List.nth arr2 0) /. 2.0
  else
    let mid_index = n/2 in
    if List.nth arr1 mid_index > List.nth arr2 mid_index then
      get_median (List.sub arr1 0 mid_index) (List.sub arr2 0 mid_index) mid_index
    else
      get_median (List.sub arr2 0 mid_index) (List.sub arr1 0 mid_index) mid_index

let find_median_of_two_lists (arr1 : int list) (arr2 : int list) : float =
  let n = List.length arr1 in
  let m = List.length arr2 in
  if n <> m then
    failwith "Lists must have same size"
  else
    get_median arr1 arr2 n

