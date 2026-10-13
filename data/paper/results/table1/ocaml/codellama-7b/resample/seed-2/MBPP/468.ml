(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that list. *)
let rec max_product (arr : int list) : int =
  match arr with
  | [] -> 0
  | [_] -> List.hd arr
  | x :: y :: rest ->
    let seq = max_product arr in
    let prod = x * y in
    if prod > seq then prod
    else if prod < seq then seq
    else x * y * List.hd rest

let rec max_product_helper (arr : int list) : int =
  match arr with
  | [] -> 0
  | [_] -> List.hd arr
  | x :: y :: rest ->
    let seq = max_product_helper arr in
    let prod = x * y in
    if prod > seq then prod
    else if prod < seq then seq
    else x * y * List.hd rest

let rec find_max_product (arr : int list) : int =
  let arr_len = List.length arr in
  let temp = Array.make arr_len 0 in
  temp.(0) <- max_product_helper (List.slice arr 0 (arr_len - 1)) in
  temp

let get_max_product ( arr: int list) : int =
  List.fold_left max (0) (Array.to_list temp)

let main () =
  let numbers = [1; 2; 3; 4; 5] in
  let result = find_max_product (numbers) in
  print_int result

let () = main ()

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:26:67: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_product (arr : int list) : int =
  match arr with
  | [] -> 0
  | x :: y :: rest ->
    let seq = max_product arr in
    let prod = x * y in
    if prod > seq then prod
    else if prod < seq then seq
    else x * y * List.hd rest

let rec max_product_helper (arr : int list) : int =
  match arr with
  | [] -> 0
  | x :: y :: rest ->
    let seq = max_product_helper arr in
    let prod = x * y in
    if prod > seq then prod
    else if prod < seq then seq
    else x * y * List.hd rest

let rec find_max_product (arr : int list) : int =
  let arr_len = List.length arr in
  let temp = Array.make arr_len 0 in
  temp.(0) <- max_product_helper (List.slice arr 0 (arr_len - 1)) in
  temp

let get_max_product (arr : int list) : int =
  List.fold_left max (0) (Array.to_list temp)

let main () =
  let numbers = [1;2;3;4;5] in
  let result = find_max_product (numbers) in
  print_int result

let () = main ()

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:24:67: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_product (arr : int list) : int =
  match arr with
  | [] -> 0
  | x :: y :: rest ->
    let seq = max_product arr in
    let prod = x * y in
    if prod > seq then prod
    else if prod < seq then seq
    else x * y * List.hd rest

let rec max_product_helper (arr : int list) : int =
  match arr with
  | [] -> 0
  | x :: y :: rest ->
    let seq = max_product_helper arr in
    let prod = x * y in
    if prod > seq then prod
    else if prod < seq then seq
    else x * y * List.hd rest

let rec find_max_product (arr : int list) : int =
  let arr_len = List.length arr in
  let temp = Array.make arr_len 0 in
  for i = 0 to arr_len - 1 do
    temp.(i) <- max_product_helper (List.slice arr 0 i)
  done;
  Array.fold_left ( * ) 0 temp

let get_max_product (arr : int list) : int =
  List.fold_left max (0) (Array.to_list (find_max_product arr))

let main () =
  let numbers = [1;2;3;4;5] in
  let result = get_max_product (numbers) in
  print_int result

let () = main ()

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:25:37: Unbound value "List.slice" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_product (arr : int list) : int =
  match arr with
  | [] -> 0
  | x :: y :: rest ->
    let seq = max_product arr in
    let prod = x * y in
    if prod > seq then prod
    else if prod < seq then seq
    else x * y * List.hd rest

let rec max_product_helper (arr : int list) : int =
  match arr with
  | [] -> 0
  | x :: y :: rest ->
    let seq = max_product_helper arr in
    let prod = x * y in
    if prod > seq then prod
    else if prod < seq then seq
    else x * y * List.hd rest

let rec find_max_product (arr : int list) : int =
  let arr_len = List.length arr in
  let temp = Array.make arr_len 0 in
  for i = 0 to arr_len - 1 do
    temp.(i) <- max_product_helper (List.sub (arr, 0, i))
  done;
  Array.fold_left ( * ) 0 temp

let get_max_product (arr : int list) : int =
  List.fold_left max 0 (Array.to_list (find_max_product arr))

let main () =
  let numbers = [1;2;3;4;5] in
  let result = get_max_product numbers in
  print_int result

let () = main ()

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:25:37: Unbound value "List.sub" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_product (arr : int list) : int =
  match arr with
  | [] -> 0
  | x :: y :: rest ->
    let seq = max_product arr in
    let prod = x * y in
    if prod > seq then prod
    else if prod < seq then seq
    else x * y * List.hd rest

let rec max_product_helper (arr : int list) : int =
  match arr with
  | [] -> 0
  | x :: y :: rest ->
    let seq = max_product_helper arr in
    let prod = x * y in
    if prod > seq then prod
    else if prod < seq then seq
    else x * y * List.hd rest

let rec find_max_product (arr : int list) : int =
  let arr_len = List.length arr in
  let temp = Array.make arr_len 0 in
  for i = 0 to arr_len - 1 do
    temp.(i) <- max_product_helper (List.sub (arr, 0, i))
  done;
  Array.fold_left ( * ) 0 temp

let get_max_product (arr : int list) : int =
  List.fold_left max 0 (Array.to_list (find_max_product arr))

let main () =
  let numbers = [1;2;3;4;5] in
  let result = get_max_product numbers in
  print_int result

let () = main ()

