let rec are_equivalent (num1 : int) (num2 : int) : bool =
  if num1 = num2 then
    true
  else
    let div1 = divisors num1 in
    let div2 = divisors num2 in
    match (div1, div2) with
    | Some d1, Some d2 when Array.length d1 = Array.length d2 ->
      let sum1 = ref 0 in
      let sum2 = ref 0 in
      for i = 0 to Array.length d1 - 1 do
        sum1 := !sum1 + d1.(i);
        sum2 := !sum2 + d2.(i);
      done;
      !sum1 = !sum2
    | _ -> false

and divisors (n : int) : int array option =
  if n < 0 then
    None
  else if n = 0 then
    Some [| 0 |]
  else
    let rec compute_divisors (n : int) (acc : int array) : int array =
      if n = 1 then
        acc
      else
        let div = ref 1 in
        for i = 2 to n / 2 do
          if n mod i = 0 then
            div := ref !div + i
        done;
        if !div = n then
          compute_divisors (n / !div) (Array.append acc [| !div |])
        else
          compute_divisors (n - 1) (Array.append acc [| n |])
    in
    Some (compute_divisors n [||])

;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to determine if the sum of the divisors of two integers are the same. *)
