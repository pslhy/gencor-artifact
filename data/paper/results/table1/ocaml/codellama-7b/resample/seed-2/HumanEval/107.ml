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
    let palindrome (x : int) : bool =
        let s = string_of_int x
        let rev = String.rev s
        rev = s
    in
    let count_even (f : int -> bool) (xs : int list) : int =
        List.count xs f
    in
    let count_odd (xs : int list) : int =
        List.length xs
    in
    let rec filter_palindrome (xs : int list) : int list =
        match xs with
        | [] -> []
        | x :: xs' ->
            if f x then x :: filter_palindrome xs' else filter_palindrome xs'
    in
    let palindromes = List.range 1 n |> filter_palindrome
    in
    (count_even palindrome palindromes, count_odd palindromes)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_odd_palindrome (n : int) :  int * int =
    let palindrome (x : int) : bool =
        let s = string_of_int x
        let rev = String.rev s
        rev = s
    in
    let count_even (f : int -> bool) (xs : int list) : int =
        List.count xs f
    in
    let count_odd (xs : int list) : int =
        List.length xs
    in
    let rec filter_palindrome (xs : int list) : int list =
        match xs with
        | [] -> []
        | x :: xs' ->
            if f x then x :: filter_palindrome xs' else filter_palindrome xs'
    in
    let palindromes = List.range 1 n |> filter_palindrome
    in
    (count_even palindrome palindromes, count_odd palindromes)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_odd_palindrome (n : int) :  int * int =
    let palindrome (x : int) : bool =
        let s = string_of_int x
        let rev = String.rev s
        rev = s
    in
    let count_even (f : int -> bool) (xs : int list) : int =
        List.count xs f
    in
    let count_odd (xs : int list) : int =
        List.length xs
    in
    let rec filter_palindrome (xs : int list) : int list =
        match xs with
        | [] -> []
        | x :: xs' ->
            if f x then x :: filter_palindrome xs' else filter_palindrome xs'
    in
    let palindromes = List.range 1 n |> filter_palindrome
    in
    let (even_count, odd_count) = (count_even palindrome palindromes, count_odd palindromes)
    in
    (even_count, odd_count)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_odd_palindrome (n : int) :  int * int =
    let palindrome (x : int) : bool =
        let s = string_of_int x
        let rev = String.rev s
        rev = s
    in
    let count_even (f : int -> bool) (xs : int list) : int =
        List.count ~f xs
    in
    let count_odd (xs : int list) : int =
        List.length xs
    in
    let rec filter_palindrome (xs : int list) : int list =
        match xs with
        | [] -> []
        | x :: xs' ->
            if f x then x :: filter_palindrome xs' else filter_palindrome xs'
    in
    let palindromes = List.range 1 n |> filter_palindrome
    in
    let (even_count, odd_count) = count_even palindrome palindromes, count_odd palindromes
    in
    (even_count, odd_count)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_odd_palindrome (n : int) :  int * int =
    let palindrome (x : int) : bool =
        let s = string_of_int x
        let rev = String.rev s
        rev = s
    in
    let count_even (f : int -> bool) (xs : int list) : int =
        List.count ~f xs
    in
    let count_odd (xs : int list) : int =
        List.length xs
    in
    let rec filter_palindrome (xs : int list) : int list =
        match xs with
        | [] -> []
        | x :: xs' ->
            if f x then x :: filter_palindrome xs' else filter_palindrome xs'
    in
    let palindromes = List.range 1 n |> filter_palindrome
    in
    let (even_count, odd_count) = count_even palindrome palindromes, count_odd palindromes
    in
    (even_count, odd_count)

