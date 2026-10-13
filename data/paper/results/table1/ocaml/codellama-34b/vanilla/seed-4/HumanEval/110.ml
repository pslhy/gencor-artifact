let rec exchange (lst1 : int list) (lst2 : int list) : string =
    if List.for_all (fun x -> x mod 2 = 0) lst1 then "YES"
    else if List.for_all (fun x -> x mod 2 = 1) lst1 then "NO"
    else
      let rec find_even_and_odd lst =
        match lst with
        | [] -> None
        | x :: _ when x mod 2 = 0 -> Some (x, lst)
        | _ :: xs -> find_even_and_odd xs
      in
      match find_even_and_odd lst2 with
      | None -> "NO"
      | Some (even, odds) ->
          let rec exchange' (lst1 : int list) (lst2 : int list) : int list =
            match lst1 with
            | [] -> lst2
            | x :: xs ->
                if x mod 2 = 0 then x :: exchange' xs (x :: lst2)
                else x :: exchange' xs lst2
          in
          exchange' lst1 (List.tl odds)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     In this problem, you will implement a function that takes two lists of numbers, *)
(*     and determines whether it is possible to perform an exchange of elements *)
(*     between them to make lst1 a list of only even numbers. *)
(*     There is no limit on the number of exchanged elements between lst1 and lst2. *)
(*     If it is possible to exchange elements between the lst1 and lst2 to make *)
(*     all the elements of lst1 to be even, return "YES". *)
(*     Otherwise, return "NO". *)
(*     For example: *)
(*     >>> exchange [1; 2; 3; 4] [1; 2; 3; 4] *)
(*     "YES" *)
(*     >>> exchange [1; 2; 3; 4] [1; 5; 3; 4] *)
(*     "NO" *)
(*     It is assumed that the input lists will be non-empty. *)
