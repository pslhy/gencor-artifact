(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that returns the list in a list of lists whose sum of elements is the highest. *)
let rec max_sum_list (lists : int list list) : int list =
    (* Define a function to compare the sums of two lists of integers. *)
    let compare_sums (l1 : int list) (l2 : int list) : bool =
        List.fold_left ( + ) 0 l1 > List.fold_left ( + ) 0 l2 in

    (* Return the list in the input list with the highest sum. *)
    match lists with
    | [] -> [] (* Base case: no lists to compare. *)
    | [l] -> l (* Base case: only one list in the input list. *)
    | l1 :: l2 :: rest ->
        if compare_sums l1 l2 then
            l1 :: max_sum_list (l2 :: rest) (* Recursive case: compare two lists and recurse on the rest of the input list. *)
        else
            l2 :: max_sum_list (l1 :: rest)
done;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sum_list (lists : int list list) : int list =
    match lists with
    | [] -> []
    | [l] -> l
    | l1 :: l2 :: rest ->
        if compare_sums l1 l2 then
            l1 :: max_sum_list (l2 :: rest)
        else
            l2 :: max_sum_list (l1 :: rest)

let rec compare_sums (l1 : int list) (l2 : int list) : bool =
    match l1, l2 with
    | [], [] -> true
    | [], _ -> false
    | _, [] -> true
    | h1 :: t1, h2 :: t2 ->
        if h1 <> h2 then
            false
        else
            compare_sums t1 t2

let () =
    let lists = [[1; 2; 3]; [4; 5; 6]; [7; 8; 9]] in
    let result = max_sum_list lists in
    Printf.printf "%d\n" (List.fold_left (+) 0 result)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:12: Unbound value "compare_sums" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sum_list (lists : int list list) : int list =
    match lists with
    | [] -> []
    | [l] -> l
    | l1 :: l2 :: rest ->
        if compare_sums l1 l2 then
            l1 :: max_sum_list (l2 :: rest)
        else
            l2 :: max_sum_list (l1 :: rest)

let compare_sums (l1 : int list) (l2 : int list) : bool =
    match l1, l2 with
    | [], [] -> true
    | [], _ -> false
    | _, [] -> true
    | h1 :: t1, h2 :: t2 ->
        if h1 <> h2 then
            false
        else
            compare_sums t1 t2

let () =
    let lists = [[1; 2; 3]; [4; 5; 6]; [7; 8; 9]] in
    let result = max_sum_list lists in
    Printf.printf "%d\n" (List.fold_left (+) 0 result)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:12: Unbound value "compare_sums" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sum_list (lists : int list list) : int list =
    match lists with
    | [] -> []
    | [l] -> l
    | l1 :: l2 :: rest ->
        if compare_sums l1 l2 then
            l1 :: max_sum_list (l2 :: rest)
        else
            l2 :: max_sum_list (l1 :: rest)

let compare_sums (l1 : int list) (l2 : int list) : bool =
    match l1, l2 with
    | [], [] -> true
    | [], _ -> false
    | _, [] -> true
    | h1 :: t1, h2 :: t2 ->
        if h1 <> h2 then
            false
        else
            compare_sums t1 t2

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:12: Unbound value "compare_sums" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sum_list (lists : int list list) : int list =
    match lists with
    | [] -> []
    | [l] -> l
    | l1 :: l2 :: rest ->
        if compare_sums l1 l2 then
            l1 :: max_sum_list (l2 :: rest)
        else
            l2 :: max_sum_list (l1 :: rest)

let compare_sums (l1 : int list) (l2 : int list) : bool =
    match l1, l2 with
    | [], [] -> true
    | [], _::_ -> false
    | _::_, [] -> true
    | h1::t1, h2::t2 ->
        if h1 <> h2 then
            false
        else
            compare_sums t1 t2

