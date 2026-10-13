(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Implement a function that takes an non-negative integer and returns a list of the first n *)
(*     integers that are prime numbers and less than n. *)
(*     for example: *)
(*     >>> count_up_to 5 *)
(*     [2; 3] *)
(*     >>> count_up_to 11 *)
(*     [2; 3; 5; 7] *)
(*     >>> count_up_to 0 *)
(*     [] *)
(*     >>> count_up_to 20 *)
(*     [2; 3; 5; 7; 11; 13; 17; 19] *)
(*     >>> count_up_to 1 *)
(*     [] *)
(*     >>> count_up_to 18 *)
(*     [2; 3; 5; 7; 11; 13; 17] *)
let rec count_up_to (n : int) : int list =
    if n = 0 then
        []
    else if n = 1 then
        [1]
    else
        let rec loop (m : int) (acc : int list) : int list =
            if m = n then
                acc
            else
                let new_acc =
                    if is_prime(m) then
                        m :: acc
                    else
                        acc
                in
                loop (m + 1) new_acc
        in
        loop 2 []

let is_prime (n : int) : bool =
    if n <= 1 then
        false
    else
        let rec loop (i : int) : bool =
            if i = 1 then
                true
            else if n mod i = 0 then
                false
            else
                loop (i - 1)
        in
        loop (n / 2)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:24: Unbound value "is_prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_up_to (n : int) : int list =
    if n = 0 then
        []
    else if n = 1 then
        [1]
    else
        let rec loop (m : int) (acc : int list) : int list =
            if m = n then
                acc
            else
                let new_acc =
                    if is_prime(m) then
                        m :: acc
                    else
                        acc
                in
                loop (m + 1) new_acc
        in
        loop 2 []

let is_prime (n : int) : bool =
    if n <= 1 then
        false
    else
        let rec loop (i : int) : bool =
            if i = 1 then
                true
            else if n mod i = 0 then
                false
            else
                loop (i - 1)
        in
        loop (n / 2)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:24: Unbound value "is_prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_up_to (n : int) : int list =
    if n = 0 then
        []
    else if n = 1 then
        [1]
    else
        let rec is_prime (n : int) : bool =
            if n <= 1 then
                false
            else
                let rec loop (i : int) : bool =
                    if i = 1 then
                        true
                    else if n mod i = 0 then
                        false
                    else
                        loop (i - 1)
                in
                loop (n / 2)
        in
        let rec loop (m : int) (acc : int list) : int list =
            if m = n then
                acc
            else
                let new_acc =
                    if is_prime(m) then
                        m :: acc
                    else
                        acc
                in
                loop (m + 1) new_acc
        in
        loop 2 []

