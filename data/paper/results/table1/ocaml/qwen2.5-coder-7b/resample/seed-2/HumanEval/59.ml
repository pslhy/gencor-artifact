(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return the largest prime factor of n. Assume n > 1 and is not a prime. *)
(*     >>> largest_prime_factor 13195 *)
(*     29 *)
(*     >>> largest_prime_factor 2048 *)
(*     2 *)
let rec largest_prime_factor (n : int) : int = 
    let rec is_prime (m : int) : bool =
        if m <= 1 then false
        elif m = 2 then true
        else
            let rec check_factor (i : int) : bool =
                if i * i > m then true
                elif m mod i = 0 then false
                else check_factor (i + 1)
            in check_factor 2
    in
    let rec find_largest_factor (x : int) : int =
        if x mod 2 = 0 then x
        else
            let rec try_factor (y : int) : int =
                if y * y > x then x
                elif x mod y = 0 then if is_prime y then y else try_factor (y + 1)
                else try_factor (y + 1)
            in try_factor 3
    in
    find_largest_factor n


(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:14: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec largest_prime_factor (n : int) : int = 
    let rec is_prime (m : int) : bool =
        if m <= 1 then false
        elif m = 2 then true
        else
            let rec check_factor (i : int) : bool =
                if i * i > m then true
                elif m mod i = 0 then false
                else check_factor (i + 1)
            in check_factor 2
    in
    let rec find_largest_factor (x : int) : int =
        if x mod 2 = 0 then x
        else
            let rec try_factor (y : int) : int =
                if y * y > x then x
                elif x mod y = 0 && is_prime y then y
                else try_factor (y + 1)
            in try_factor 3
    in
    find_largest_factor n

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:14: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec largest_prime_factor (n : int) : int = 
    let rec is_prime (m : int) : bool =
        if m <= 1 then false
        elif m = 2 then true
        else
            let rec check_factor (i : int) : bool =
                if i * i > m then true
                elif m mod i = 0 then false
                else check_factor (i + 1)
            in check_factor 2
    in
    let rec find_largest_factor (x : int) : int =
        if x mod 2 = 0 then x
        else
            let rec try_factor (y : int) : int =
                if y * y > x then x
                elif x mod y = 0 && is_prime y then y
                else try_factor (y + 1)
            in try_factor 3
    in
    find_largest_factor n

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:14: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec largest_prime_factor (n : int) : int = 
    let rec is_prime (m : int) : bool =
        if m <= 1 then false
        elif m = 2 then true
        else
            let rec check_factor (i : int) : bool =
                if i * i > m then true
                elif m mod i = 0 then false
                else check_factor (i + 1)
            in check_factor 2
    in
    let rec find_largest_factor (x : int) : int =
        if x mod 2 = 0 then x
        else
            let rec try_factor (y : int) : int =
                if y * y > x then x
                elif x mod y = 0 && is_prime y then y
                else try_factor (y + 1)
            in try_factor 3
    in
    find_largest_factor n

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:14: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec largest_prime_factor (n : int) : int = 
    let rec is_prime (m : int) : bool =
        if m <= 1 then false
        elif m = 2 then true
        else
            let rec check_factor (i : int) : bool =
                if i * i > m then true
                elif m mod i = 0 then false
                else check_factor (i + 1)
            in check_factor 2
    in
    let rec find_largest_factor (x : int) : int =
        if x mod 2 = 0 then x
        else
            let rec try_factor (y : int) : int =
                if y * y > x then x
                elif x mod y = 0 && is_prime y then y
                else try_factor (y + 2) (* Only check odd factors *)
            in try_factor 3
    in
    find_largest_factor n

