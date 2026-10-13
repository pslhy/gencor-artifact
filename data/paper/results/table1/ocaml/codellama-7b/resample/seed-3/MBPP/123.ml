(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
let rec amicable_numbers_sum (limit : int) : int =
  let d1 (n : int) : int =
    List.reduce ( + ) (List.map (fun i -> i * i) (factors_of n)) in
  let d2 (n : int) : int =
    List.reduce ( + ) (List.map (fun i -> i * i) (factors_of n)) in
  let filtered_numbers : int list =
    List.filter (fun (n : int) -> d2 n = n) (range 1 limit) in
  List.fold_left ( + ) 0 filtered_numbers
and factors_of (n : int) : int list =
  let rec fac_aux (n : int) (i : int) : int list =
    if n < i * i then
      []
    else if n mod i = 0 then
      i :: fac_aux n (i + 1)
    else
      fac_aux n (i + 1) in
  fac_aux n 2
and range (start : int) (end_ : int) : int list =
  let rec range_aux (start : int) (end_ : int) : int list =
    if start > end_ then
      []
    else
      start :: range_aux (start + 1) end_ in
  range_aux start end_

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:5: Unbound value "List.reduce" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec amicable_numbers_sum (limit : int) : int =
  let d1 (n : int) : int =
    let factors = List.filter (fun i -> n mod i = 0) (range 1 (n / 2)) in
    List.fold_left ( + ) 0 factors
  and d2 (n : int) : int =
    let factors = List.filter (fun i -> n mod i = 0) (range 1 (n / 2)) in
    List.fold_left ( + ) 0 factors
  and factors_of (n : int) : int list =
    let rec fac_aux (n : int) (i : int) : int list =
      if n < i * i then
        []
      else if n mod i = 0 then
        i :: fac_aux n (i + 1)
      else
        fac_aux n (i + 1)
    in
    fac_aux n 2
  and range (start : int) (end_ : int) : int list =
    let rec range_aux (start : int) (end_ : int) : int list =
      if start > end_ then
        []
      else
        start :: range_aux (start + 1) end_
    in
    range_aux start end_
  in
  let amicable_pairs = List.filter (fun (a, b) -> a <> b) (List.map (fun n -> (d1 n, d2 n)) (range 2 limit)) in
  List.fold_left ( + ) 0 (List.map fst (List.filter (fun (a, b) -> a > 0 && b > 0) amicable_pairs))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:55: Unbound value "range" *)
(*     Hint: Did you mean "raise"? *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 2 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec amicable_numbers_sum (limit : int) : int =
  let d1 (n : int) : int =
    let factors = List.filter (fun i -> n mod i = 0) (List.range 1 (n / 2)) in
    List.fold_left ( + ) 0 factors
  and d2 (n : int) : int =
    let factors = List.filter (fun i -> n mod i = 0) (List.range 1 (n / 2)) in
    List.fold_left ( + ) 0 factors
  and factors_of (n : int) : int list =
    let rec fac_aux (n : int) (i : int) : int list =
      if n < i * i then
        []
      else if n mod i = 0 then
        i :: fac_aux n (i + 1)
      else
        fac_aux n (i + 1)
    in
    fac_aux n 2
  and range (start : int) (end_ : int) : int list =
    let rec range_aux (start : int) (end_ : int) : int list =
      if start > end_ then
        []
      else
        start :: range_aux (start + 1) end_
    in
    range_aux start end_
  in
  let amicable_pairs = List.filter (fun (a, b) -> a <> b) (List.map (fun n -> (d1 n, d2 n)) (range 2 limit)) in
  List.fold_left ( + ) 0 (List.map fst (List.filter (fun (a, b) -> a > 0 && b > 0) amicable_pairs))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:55: Unbound value "List.range" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec amicable_numbers_sum (limit : int) : int =
  let d1 (n : int) : int =
    let factors = List.filter (fun i -> n mod i = 0) (List.init (n / 2) (fun i -> i + 1)) in
    List.fold_left ( + ) 0 factors
  and d2 (n : int) : int =
    let factors = List.filter (fun i -> n mod i = 0) (List.init (n / 2) (fun i -> i + 1)) in
    List.fold_left ( + ) 0 factors
  and factors_of (n : int) : int list =
    let rec fac_aux (n : int) (i : int) : int list =
      if n < i * i then
        []
      else if n mod i = 0 then
        i :: fac_aux n (i + 1)
      else
        fac_aux n (i + 1)
    in
    fac_aux n 2
  and range (start : int) (end_ : int) : int list =
    let rec range_aux (start : int) (end_ : int) : int list =
      if start > end_ then
        []
      else
        start :: range_aux (start + 1) end_
    in
    range_aux start end_
  in
  let amicable_pairs = List.filter (fun (a, b) -> a <> b) (List.map (fun n -> (d1 n, d2 n)) (range 2 limit)) in
  List.fold_left ( + ) 0 (List.map fst (List.filter (fun (a, b) -> a > 0 && b > 0) amicable_pairs))

