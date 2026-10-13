(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a positive integer n, return a tuple that has the number of even and odd *)
(*     integer palindromes that fall within the range(1, n), inclusive. *)
(*     Example 1: *)
(*     >>> even_odd_palindrome 3 *)
(*     (1, 2) *)
(*     Explanation: *)
(*     Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd. *)
(*     Example 2: *)
(*     >>> even_odd_palindrome 12 *)
(*     (4, 6) *)
(*     Explanation: *)
(*     Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd. *)
(*     Note: *)
(*     1. 1 <= n <= 10^3 *)
(*     2. returned tuple has the number of even and odd integer palindromes respectively. *)
let rec even_odd_palindrome (n : int) :  int * int = 
    let is_palindrome x = 
        let s = string_of_int x in 
        s = String.rev s in 
    let rec loop acc n = 
        if n < 1 then 
            acc 
        else 
            let acc' = if is_palindrome n then 
                        if n mod 2 = 0 then 
                            (fst acc + 1, snd acc) 
                        else 
                            (fst acc, snd acc + 1) 
                    else 
                        acc in 
            loop acc' (n - 1) in 
    loop (0, 0) n
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:13: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_odd_palindrome (n : int) :  int * int =
    let is_palindrome x =
        let s = string_of_int x in
        s = String.reverse s in
    let rec loop acc n =
        if n < 1 then
            acc
        else
            let acc' = if is_palindrome n then
                        if n mod 2 = 0 then
                            (fst acc + 1, snd acc)
                        else
                            (fst acc, snd acc + 1)
                    else
                        acc in
            loop acc' (n - 1) in
    loop (0, 0) n

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:13: Unbound value "String.reverse" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_odd_palindrome (n : int) :  int * int =
    let is_palindrome x =
        let s = string_of_int x in
        s = String.reverse s in
    let rec loop acc n =
        if n < 1 then
            acc
        else
            let acc' = if is_palindrome n then
                        if n mod 2 = 0 then
                            (fst acc + 1, snd acc)
                        else
                            (fst acc, snd acc + 1)
                    else
                        acc in
            loop acc' (n - 1) in
    loop (0, 0) n

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:13: Unbound value "String.reverse" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_odd_palindrome (n : int) :  int * int =
    let is_palindrome x =
        let s = string_of_int x in
        s = s |> String.split_on_char '-' |> List.rev |> String.concat "" in
    let rec loop acc n =
        if n < 1 then
            acc
        else
            let acc' = if is_palindrome n then
                        if n mod 2 = 0 then
                            (fst acc + 1, snd acc)
                        else
                            (fst acc, snd acc + 1)
                    else
                        acc in
            loop acc' (n - 1) in
    loop (0, 0) n

