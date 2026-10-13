
let rec even_odd_palindrome (n : int) :  int * int = 
    let palindrome (x : int) =
        let str = string_of_int x in
        let rev = String.concat "" (List.rev (String.to_seq str)) in
        x = int_of_string rev
    in
    let even_odd (x : int) = if x mod 2 = 0 then 1 else 0 in
    let rec helper (low : int) (high : int) (even : int) (odd : int) :  int * int =
        if low > high then even, odd
        else
            let x = low in
            if palindrome x then
                let y = even_odd x in
                helper (low + 1) high (even + y) (odd + (2 - y))
            else
                helper (low + 1) high even odd
    in
    helper 1 n 0 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
