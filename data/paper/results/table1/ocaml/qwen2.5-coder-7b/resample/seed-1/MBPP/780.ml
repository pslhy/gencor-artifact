(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the combinations of sums with tuples in the given tuple list. https://www.geeksforgeeks.org/mlthon-combinations-of-sum-with-tuples-in-tuple-list/ *)
let rec find_combinations (test_list :  (int * int) list) :  (int * int) list = 
  let rec check (curr: int * int) (lst : (int * int) list) : (int * int) option =
    match lst with
    | [] -> None
    | (x, y) :: tl ->
        if curr = (x, y) then Some (x, y)
        else check curr tl
  in
  let rec combine acc lst =
    match lst with
    | [] -> acc
    | (x, y) :: tl ->
        let acc' = List.filter (fun z -> not (equal z (x, y))) acc in
        combine (List.append acc' (List.map (fun (a, b) -> (x + a, y + b)) acc')) acc
  in
  let rec filter_repeats lst =
    match lst with
    | [] -> []
    | x :: xs ->
        if List.mem x xs then filter_repeats xs else x :: filter_repeats xs
  in
  filter_repeats (combine [] test_list)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:47: Unbound value "equal" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_combinations (test_list :  (int * int) list) :  (int * int) list = 
  let rec check (curr: int * int) (lst : (int * int) list) : (int * int) option =
    match lst with
    | [] -> None
    | (x, y) :: tl ->
        if curr = (x, y) then Some (x, y)
        else check curr tl
  in
  let rec combine acc lst =
    match lst with
    | [] -> acc
    | (x, y) :: tl ->
        let acc' = List.filter (fun z -> not (List.exists (fun (a, b) -> equal (a, b) z) acc)) acc in
        combine (List.append acc' (List.map (fun (a, b) -> (x + a, y + b)) acc')) acc
  in
  let rec filter_repeats lst =
    match lst with
    | [] -> []
    | x :: xs ->
        if List.exists (fun (a, b) -> equal (a, b) x) xs then filter_repeats xs else x :: filter_repeats xs
  in
  filter_repeats (combine [] test_list)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:74: Unbound value "equal" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_combinations (test_list :  (int * int) list) :  (int * int) list = 
  let rec check (curr: int * int) (lst : (int * int) list) : (int * int) option =
    match lst with
    | [] -> None
    | (x, y) :: tl ->
        if curr = (x, y) then Some (x, y)
        else check curr tl
  in
  let rec combine acc lst =
    match lst with
    | [] -> acc
    | (x, y) :: tl ->
        let acc' = List.filter (fun z -> not (List.exists (fun (a, b) -> a = x && b = y) acc)) acc in
        combine (List.append acc' (List.map (fun (a, b) -> (x + a, y + b)) acc')) acc
  in
  let rec filter_repeats lst =
    match lst with
    | [] -> []
    | x :: xs ->
        if List.exists (fun (a, b) -> a = x && b = y) xs then filter_repeats xs else x :: filter_repeats xs
  in
  filter_repeats (combine [] test_list)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:20:52: Unbound value "y" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_combinations (test_list :  (int * int) list) :  (int * int) list = 
  let rec check (curr: int * int) (lst : (int * int) list) : (int * int) option =
    match lst with
    | [] -> None
    | (x, y) :: tl ->
        if curr = (x, y) then Some (x, y)
        else check curr tl
  in
  let rec combine acc lst =
    match lst with
    | [] -> acc
    | (x, y) :: tl ->
        let acc' = List.filter (fun z -> not (List.exists (fun (a, b) -> a = x && b = y) acc)) acc in
        combine (List.append acc' (List.map (fun (a, b) -> (x + a, y + b)) acc')) acc
  in
  let rec filter_repeats lst =
    match lst with
    | [] -> []
    | x :: xs ->
        if List.exists (fun (a, b) -> a = x && b = y) xs then filter_repeats xs else x :: filter_repeats xs
  in
  filter_repeats (combine [] test_list)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:20:52: Unbound value "y" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_combinations (test_list :  (int * int) list) :  (int * int) list = 
  let rec check (curr: int * int) (lst : (int * int) list) : (int * int) option =
    match lst with
    | [] -> None
    | (x, y) :: tl ->
        if curr = (x, y) then Some (x, y)
        else check curr tl
  in
  let rec combine acc lst =
    match lst with
    | [] -> acc
    | (x, y) :: tl ->
        let acc' = List.filter (fun (a, b) -> not (List.exists (fun (a, b) -> a = x && b = y) acc)) acc in
        combine (List.append acc' (List.map (fun (a, b) -> (x + a, y + b)) acc')) acc
  in
  let rec filter_repeats lst =
    match lst with
    | [] -> []
    | x :: xs ->
        if List.exists (fun (a, b) -> a = x && b = y) xs then filter_repeats xs else x :: filter_repeats xs
  in
  filter_repeats (combine [] test_list)

