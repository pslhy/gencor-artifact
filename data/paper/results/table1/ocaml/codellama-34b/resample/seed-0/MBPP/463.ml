(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum product sublist of the given list. *)
let rec max_subarray_product (arr : int list) : int =
    match arr with
    | [] -> 1
    | h :: t -> 
        let (a, b) = max_subarray_product_aux h max_int 0 1 t
        in if a > b then a else b
    and max_subarray_product_aux (a : int) (b : int) (c : int) : int =
        match c with
        | [] -> if a > b then a else b
        | h :: t ->
            let x = if a > h then a * h else h
            let y = if b < h then b else b * h
            in max_subarray_product_aux x y t

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_subarray_product (arr : int list) : int =
    match arr with
    | [] -> 1
    | h :: t ->
        let (a, b) = max_subarray_product_aux h max_int 0 1 t
        in if a > b then a else b

and max_subarray_product_aux (a : int) (b : int) (c : int) : int =
    match c with
    | [] -> if a > b then a else b
    | h :: t ->
        let x = if a > h then a * h else h
        let y = if b < h then b else b * h
        in max_subarray_product_aux x y t

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_subarray_product (arr : int list) : int =
    match arr with
    | [] -> 1
    | h :: t ->
        let (a, b) = max_subarray_product_aux h max_int 0 1 t
        in if a > b then a else b

and max_subarray_product_aux (a : int) (b : int) (c : int) : int =
    match c with
    | [] -> if a > b then a else b
    | h :: t ->
        let x = if a > h then a * h else h
        let y = if b < h then b else b * h
        in max_subarray_product_aux x y t

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_subarray_product (arr : int list) : int =
    match arr with
    | [] -> 1
    | h :: t ->
        let (a, b) = max_subarray_product_aux h max_int 0 1 t
        in if a > b then a else b

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:22: Unbound value "max_subarray_product_aux" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_subarray_product (arr : int list) : int =
    match arr with
    | [] -> 1
    | h :: t ->
        let (a, b) = max_subarray_product_aux h max_int 0 1 t in
        if a > b then a else b

and max_subarray_product_aux (a : int) (max : int) (i : int) (j : int) (arr : int list) : int * int =
    match arr with
    | [] -> (a, max)
    | h :: t ->
        let (new_a, new_max) = max_subarray_product_aux a max i (j+1) t in
        if h >= 0 then
            if new_a * h > new_max then (new_a * h, new_max)
            else (new_a * h, new_a * h)
        else
            if new_max < -h then (-h, new_max)
            else (new_a * h, new_max)

