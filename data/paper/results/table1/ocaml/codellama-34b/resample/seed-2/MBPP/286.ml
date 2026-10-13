(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int =
    let m = List.length a in
    if k = 1 || n > m then
        find_maximum_subarray_sum a 0 0
    else if n <= 0 then
        0
    else
        max (find_maximum_subarray_sum a 0 n)
                (max_sub_array_sum_repeated a (n-1) (k-1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:9: Unbound value "find_maximum_subarray_sum" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int =
    let m = List.length a in
    if k = 1 || n > m then
        find_maximum_subarray_sum a 0 0
    else if n <= 0 then
        0
    else
        max (find_maximum_subarray_sum a 0 n)
                (max_sub_array_sum_repeated a (n-1) (k-1))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:9: Unbound value "find_maximum_subarray_sum" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int =
    let m = List.length a in
    if k = 1 || n > m then
        failwith "Invalid input"
    else if n <= 0 then
        0
    else
        max (find_maximum_subarray_sum a 0 n)
            (max_sub_array_sum_repeated a (n-1) (k-1))

let find_maximum_subarray_sum (a : int list) (i : int) (j : int) : int =
    let rec aux (a : int list) (i : int) (j : int) (acc : int) : int =
        if i = j then
            acc
        else if acc > 0 then
            aux a (i+1) j (acc + a.(i))
        else
            aux a (i+1) j a.(i)
    in
    aux a i j 0

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:14: Unbound value "find_maximum_subarray_sum" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int =
    let m = List.length a in
    let rec find_maximum_subarray_sum (a : int list) (i : int) (j : int) : int =
        if i = j then
            0
        else
            max (a.(i) + find_maximum_subarray_sum a (i+1) j)
                 (find_maximum_subarray_sum a i (j-1))
    in
    if k = 1 || n > m then
        failwith "Invalid input"
    else if n <= 0 then
        0
    else
        max (find_maximum_subarray_sum a 0 n)
            (max_sub_array_sum_repeated a (n-1) (k-1))

