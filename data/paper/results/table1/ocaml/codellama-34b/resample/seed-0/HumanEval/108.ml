(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function count_nums which takes a list of integers and returns *)
(*     the number of elements which has a sum of digits > 0. *)
(*     If a number is negative, then its first signed digit will be negative: *)
(*     e.g. -123 has signed digits -1, 2, and 3. *)
(*     >>> count_nums [] *)
(*     0 *)
(*     >>> count_nums [(-1); 11; (-11)] *)
(*     1 *)
(*     >>> count_nums [1; 1; 2] *)
(*     3 *)
let rec count_nums (arr : int list) : int =
    match arr with
    | [] -> 0
    | h :: t -> 
        let (sign, num) = if h >= 0 then
                              (1, h)
                          else
                              (-1, h * (-1))
        in
        let count = ref 0 in
        let aux (num : int) : unit =
            if num = 0 then
                ()
            else
                count := !count + 1;
                aux (num / 10)
        in
        aux (num * sign);
        !count + count_nums t

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:17: Unbound value "aux" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 11 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_nums (arr : int list) : int =
    match arr with
    | [] -> 0
    | h :: t -> 
        let (sign, num) = if h >= 0 then
                              (1, h)
                          else
                              (-1, h * (-1))
        in
        let count = ref 0 in
        let rec aux (num : int) : unit =
            if num = 0 then
                ()
            else
                count := !count + 1;
                aux (num / 10)
        in
        aux (num * sign);
        !count + count_nums t

