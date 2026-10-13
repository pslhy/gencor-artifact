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
match n with
| 1 -> 0, 1
| _ ->
    let (left, right) = (1, n)
    let (count_even, count_odd) = ref (0, 0) in
    let rec helper left right =
        if left >= right then
            ()
        else
            let (s, is_even) = (string_of_int left, (left mod 2) == 0) in
            let s_rev =  String.rev s in
            let is_palindrome = s_rev == s in
            if is_palindrome then
               (count_even := !count_even + (if is_even then 1 else 0);
                count_odd := !count_odd + (if is_even then 0 else 1);
                helper (left + 1) right
            else
                helper left (right - 1) in
    helper left right;
    (!count_even, !count_odd)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_odd_palindrome (n : int) :  int * int =
match n with
| 1 -> 0, 1
| _ ->
    let (left, right) = (1, n)
    let (count_even, count_odd) = ref (0, 0) in
    let rec helper left right =
        if left >= right then
            ()
        else if (string_of_int left)[i] == (string_of_int right)[i] then
            if i = (i + 1) then
                (count_even := !count_even + 1;
                count_odd := !count_odd + 0;
                helper (left + 1) right
else
                helper (left + 1) right;
let (even, odd) = helper left right
(even, odd)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_odd_palindrome (n : int) :  int * int =
    match n with
    | 1 -> 0, 1
    | _ ->
        let (left, right) = (1, n)
        let (count_even, count_odd) = ref (0, 0) in
        let rec helper left right =
            if left >= right then
                ()
            else if (string_of_int left)[i] == (string_of_int right)[i] then
                if i = (i + 1) then
                    (count_even := !count_even + 1;
                    count_odd := !count_odd + 0;
                    helper (left + 1) right
            else
                helper (left + 1) right;

        let (even, odd) = helper left right
        (even, odd)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_odd_palindrome (n : int) :  int * int =
    match n with
    | 1 -> 0, 1
    | _ ->
        let (left, right) = (1, n)
        let (count_even, count_odd) = ref (0, 0) in
        let rec helper left right =
            if left >= right then
                ()
            else if (string_of_int left)[i] == (string_of_int right)[i] then
                if i = (i + 1) then
                    (count_even := !count_even + 1;
                    count_odd := !count_odd + 0;
                    helper (left + 1) right
            else
                helper (left + 1) right;
            else
                helper (left + 1) right;
        let (even, odd) = helper left right
        (even, odd)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_odd_palindrome (n : int) :  int * int =
    match n with
    | 1 -> (0, 1)
    | _ ->
        let (left, right) = (1, n)
        let (count_even, count_odd) = ref (0, 0) in
        let rec helper left right =
            if left >= right then
                ()
            else if (string_of_int left)[i] == (string_of_int right)[i] then
                if i = (i + 1) then
                    (count_even := !count_even + 1;
                    count_odd := !count_odd + 0;
                    helper (left + 1) right
            else
                helper (left + 1) right;
            else
                helper (left + 1) right;
        let (even, odd) = helper left right
        (even, odd)

