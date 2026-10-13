(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
  let rec rank_and_truncate nums n =
    if n <= 0 then
      []
    else
      let heaped = heapify_up nums in
      let greatest = List.hd heaped in
      let tail = List.tl heaped in
      greatest :: rank_and_truncate tail (n-1)
  in
  let rec heapify_up nums =
    match nums with
    | [] -> []
    | [x] -> [x]
    | hd :: tl -> heap_insert hd (heapify_up tl)
  and heap_insert x heap =
    match heap with
    | [] -> [x]
    | hd :: tl -> if x > hd then x :: heap else hd :: heapify_up (x :: tl)
  in 
  List.rev (rank_and_truncate nums n)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:20: Unbound value "heapify_up" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
  let rec rank_and_truncate nums n =
    if n <= 0 then
      []
    else
      let heaped = heapify_up nums in
      let greatest = List.hd heaped in
      let tail = List.tl heaped in
      greatest :: rank_and_truncate tail (n-1)
  in
  let rec heapify_up nums =
    match nums with
    | [] -> []
    | [x] -> [x]
    | hd :: tl -> heap_insert hd (heapify_up tl)
  and heap_insert x heap =
    match heap with
    | [] -> [x]
    | hd :: tl -> if x > hd then x :: heap else hd :: heapify_up (x :: tl)
  in 
  List.rev (rank_and_truncate nums n)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:20: Unbound value "heapify_up" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
  let rec rank_and_truncate nums n =
    if n <= 0 then
      []
    else
      let heaped = heapify_up nums in
      let greatest = List.hd heaped in
      let tail = List.tl heaped in
      greatest :: rank_and_truncate tail (n-1)
  in
  let rec heapify_up nums =
    match nums with
    | [] -> []
    | [x] -> [x]
    | hd :: tl -> heap_insert hd (heapify_up tl)
  and heap_insert x heap =
    match heap with
    | [] -> [x]
    | hd :: tl -> if x > hd then x :: heap else hd :: heapify_up (x :: tl)
  in 
  List.rev (rank_and_truncate nums n)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:20: Unbound value "heapify_up" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
  let rec rank_and_truncate nums n =
    if n <= 0 then
      []
    else
      let heaped = heapify_up nums in
      let greatest = List.hd heaped in
      let tail = List.tl heaped in
      greatest :: rank_and_truncate tail (n-1)
  and heapify_up nums =
    match nums with
    | [] -> []
    | [x] -> [x]
    | hd :: tl -> heap_insert hd (heapify_up tl)
  and heap_insert x heap =
    match heap with
    | [] -> [x]
    | hd :: tl -> if x > hd then x :: heap else hd :: heapify_up (x :: tl)
  in 
  List.rev (rank_and_truncate nums n)

