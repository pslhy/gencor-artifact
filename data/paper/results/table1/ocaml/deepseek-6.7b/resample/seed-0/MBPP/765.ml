(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
let rec is_polite (n : int) : int =
    if n == 0 then 1
    else if n == (1 lsl (Integer.log2 n)) then 1
    else if n < 0 then 0
    else (
        let x = 2 lsl (Integer.log2 n) in
        if x > n then is_polite (n - (1 lsl (Integer.log2 (n lsl (-1)))))
        else if x == n then 1
        else is_polite (n - x)
    )

let nth_polite (n : int) : int =
    let rec loop (i : int) (count : int) : int = 
        if count == n then i
        else loop (i + 1) (if is_polite i then count + 1 else count)
    in
    if n == 0 then 1
    else loop 1 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:26: Unbound module "Integer" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_polite (n : int) : int =
    if n = 0 then 1
    else if n = (1 lsl (Core.Int.ilog2 n)) then 1
    else if n < 0 then 0
    else (
        let x = 2 lsl (Core.Int.ilog2 n) in
        if x > n then is_polite (n - (1 lsl (Core.Int.ilog2 (n lsl (-1)))))
        else if x = n then 1
        else is_polite (n - x)
    )

let nth_polite (n : int) : int =
    let rec loop (i : int) (count : int) : int = 
        if count = n then i
        else loop (i + 1) (if is_polite i then count + 1 else count)
    in
    if n = 0 then 1
    else loop 1 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:25: Unbound module "Core" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_polite (n : int) : int =
    if n = 0 then 1
    else if n = (1 lsl (Int.shift_left 1 (Core.Int.ilog2 n))) then 1
    else if n < 0 then 0
    else (
        let x = Int.shift_left 2 (Core.Int.ilog2 n) in
        if x > n then is_polite (n - (1 lsl (Core.Int.ilog2 (n lsl (-1)))))
        else if x = n then 1
        else is_polite (n - x)
    )

let nth_polite (n : int) : int =
    let rec loop (i : int) (count : int) : int = 
        if count = n then i
        else loop (i + 1) (if is_polite i then count + 1 else count)
    in
    if n = 0 then 1
    else loop 1 0

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:43: Unbound module "Core" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_polite (n : int) : int =
    if n = 0 then 1
    else if n = (1 lsl (Int.shift_left 1 (Int.log2 n))) then 1
    else if n < 0 then 0
    else (
        let x = Int.shift_left 2 (Int.log2 n) in
        if x > n then is_polite (n - (1 lsl (Int.log2 (n lsl (-1)))))
        else if x = n then 1
        else is_polite (n - x)
    )

let nth_polite (n : int) : int =
    let rec loop (i : int) (count : int) : int = 
        if count = n then i
        else loop (i + 1) (if is_polite i then count + 1 else count)
    in
    if n = 0 then 1
    else loop 1 0

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:43: Unbound value "Int.log2" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_polite (n : int) : int =
    if n = 0 then 1
    else if n = (1 lsl (Core.Int.shift_left 1 (Core.Int.log2 n))) then 1
    else if n < 0 then 0
    else (
        let x = Core.Int.shift_left 2 (Core.Int.log2 n) in
        if x > n then is_polite (n - (1 lsl (Core.Int.log2 (n lsl (-1)))))
        else if x = n then 1
        else is_polite (n - x)
    )

let nth_polite (n : int) : int =
    let rec loop (i : int) (count : int) : int = 
        if count = n then i
        else loop (i + 1) (if is_polite i then count + 1 else count)
    in
    if n = 0 then 1
    else loop 1 0

