(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return list of prime factors of given integer in the order from smallest to largest. *)
(*     Each of the factors should be listed number of times corresponding to how many times it appeares in factorization. *)
(*     Input number should be equal to the product of all factors *)
(*     >>> factorize 8 *)
(*     [2; 2; 2] *)
(*     >>> factorize 25 *)
(*     [5; 5] *)
(*     >>> factorize 70 *)
(*     [2; 5; 7] *)
let rec factorize (n : int) : int list =
  match n with
  | 1 -> []
  | _ ->
    let prime_factors =
      let rec find_prime_factors (n : int) (acc : int list) =
        match n with
        | 1 -> acc
        | _ ->
          let next_prime = find_next_prime n in
          find_prime_factors (n / next_prime) (next_prime :: acc)
      in
      find_prime_factors n []
    in
    List.sort compare prime_factors

and find_next_prime (n : int) : int =
  match n with
  | 2 -> 2
  | 3 -> 3
  | _ ->
    let rec find_next_prime' (n : int) : int =
      match n with
      | p when p land 1 = 0 -> find_next_prime' (p / 2)
      | p when p land 7 = 0 -> find_next_prime' (p / 7)
      | p when p mod 2 = 0 -> p + 1
      | p when p mod 5 = 0 -> p + 4
      | _ ->
        let rec is_prime (n : int) : bool =
          match n with
          | 2 -> true
          | 3 -> true
          | _ ->
            let rec is_prime' (n : int) (max_div : int) : bool =
              match n with
              | _ when n = max_div -> true
              | _ ->
                let d = n mod max_div in
                d = 1 || (d = max_div && is_prime' (n / max_div) (max_div)
                is_prime' (n / max_div) (max_div)
        in
        let rec find_next_prime'' (n : int) : int =
          match n with
          | p when p land 1 = 0 -> find_next_prime'' (p / 2)
          | p when p land 7 = 0 -> find_next_prime'' (p / 7)
          | p when is_prime p -> p
          | _ -> p + 1
        in
        find_next_prime'' (n + 1)
    in
    find_next_prime' n
in
factorize n
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:41:9: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec factorize (n : int) : int list =
  match n with
  | 1 -> []
  | _ ->
    let prime_factors =
      let rec find_prime_factors (n : int) (acc : int list) =
        match n with
        | 1 -> acc
        | _ ->
          let next_prime = find_next_prime n in
          find_prime_factors (n / next_prime) (next_prime :: acc)
      in
      find_prime_factors n []
    in
    List.sort compare prime_factors

and find_next_prime (n : int) : int =
  match n with
  | 2 -> 2
  | 3 -> 3
  | _ ->
    let rec find_next_prime' (n : int) : int =
      match n with
      | p when p land 1 = 0 -> find_next_prime' (p / 2)
      | p when p land 7 = 0 -> find_next_prime' (p / 7)
      | p ->
        let rec is_prime (n : int) : bool =
          match n with
          | 2 -> true
          | 3 -> true
          | _ ->
            let rec is_prime' (n : int) (max_div : int) : bool =
              match n with
              | _ when n = max_div -> true
              | _ ->
                let d = n mod max_div in
                d = 1 || (d = max_div && is_prime' (n / max_div) (max_div)
            in
            let rec find_next_prime'' (n : int) : int =
              match n with
              | p when p land 1 = 0 -> find_next_prime'' (p / 2)
              | p when p land 7 = 0 -> find_next_prime'' (p / 7)
              | p when is_prime p -> p
              | _ -> p + 1
            in
            find_next_prime'' (n + 1)
    in
    find_next_prime' n
;;
val factorize : int -> int list = <fun>
val find_next_prime : int -> int = <fun>

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:38:13: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec factorize (n : int) : int list =
  match n with
  | 1 -> []
  | _ ->
    let prime_factors =
      let rec find_prime_factors (n : int) (acc : int list) =
        match n with
        | 1 -> acc
        | _ ->
          let next_prime = find_next_prime n in
          find_prime_factors (n / next_prime) (next_prime :: acc)
      in
      find_prime_factors n []
    in
    List.sort compare prime_factors

and find_next_prime (n : int) : int =
  match n with
  | 2 -> 2
  | 3 -> 3
  | _ ->
    let rec find_next_prime' (n : int) : int =
      match n with
      | p when p land 1 = 0 -> find_next_prime' (p / 2)
      | p when p land 7 = 0 -> find_next_prime' (p / 7)
      | p ->
        let rec is_prime (n : int) : bool =
          match n with
          | 2 -> true
          | 3 -> true
          | _ ->
            let rec is_prime' (n : int) (max_div : int) : bool =
              match n with
              | _ when n = max_div -> true
              | _ ->
                let d = n mod max_div in
                d = 1 || (d = max_div && is_prime' (n / max_div) (max_div)
            in
            let rec find_next_prime'' (n : int) : int =
              match n with
              | p when p land 1 = 0 -> find_next_prime'' (p / 2)
              | p when p land 7 = 0 -> find_next_prime'' (p / 7)
              | p when is_prime p -> p
              | _ -> p + 1
            in
            find_next_prime'' (n + 1)
    in
    find_next_prime' n

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:38:13: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec factorize (n : int) : int list =
  match n with
  | 1 -> []
  | _ ->
    let prime_factors =
      let rec find_prime_factors (n : int) (acc : int list) =
        match n with
        | 1 -> acc
        | _ ->
          let next_prime = find_next_prime n in
          find_prime_factors (n / next_prime) (next_prime :: acc)
      in
      find_prime_factors n []
    in
    List.sort compare prime_factors

and find_next_prime (n : int) : int =
  match n with
  | 2 -> 2
  | 3 -> 3
  | _ ->
    let rec find_next_prime' (n : int) : int =
      match n with
      | p when p land 1 = 0 -> find_next_prime' (p / 2)
      | p when p land 7 = 0 -> find_next_prime' (p / 7)
      | p ->
        let rec is_prime (n : int) : bool =
          match n with
          | 2 -> true
          | 3 -> true
          | _ ->
            let rec is_prime' (n : int) (max_div : int) : bool =
              match n with
              | _ when n = max_div -> true
              | _ ->
                let d = n mod max_div in
                d = 1 || (d = max_div && is_prime' (n / max_div) (max_div)
            in
            let rec find_next_prime'' (n : int) : int =
              match n with
              | p when p land 1 = 0 -> find_next_prime'' (p / 2)
              | p when p land 7 = 0 -> find_next_prime'' (p / 7)
              | p when is_prime p -> p
              | _ -> p + 1
            in
            find_next_prime'' (n + 1)
    in
    find_next_prime' n

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:38:13: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec factorize (n : int) : int list =
  match n with
  | 1 -> []
  | _ ->
    let prime_factors =
      let rec find_prime_factors (n : int) (acc : int list) =
        match n with
        | 1 -> acc
        | _ ->
          let next_prime = find_next_prime n in
          find_prime_factors (n / next_prime) (next_prime :: acc)
      in
      find_prime_factors n []
    in
    List.sort compare prime_factors

and find_next_prime (n : int) : int =
  match n with
  | 2 -> 2
  | 3 -> 3
  | _ ->
    let rec find_next_prime' (n : int) : int =
      match n with
      | p when p land 1 = 0 -> find_next_prime' (p / 2)
      | p when p land 7 = 0 -> find_next_prime' (p / 7)
      | p ->
        let rec is_prime (n : int) : bool =
          match n with
          | 2 -> true
          | 3 -> true
          | _ ->
            let rec is_prime' (n : int) (max_div : int) : bool =
              match n with
              | _ when n = max_div -> true
              | _ ->
                let d = n mod max_div in
                d = 1 || (d = max_div && is_prime' (n / max_div) (max_div)
            in
            let rec find_next_prime'' (n : int) : int =
              match n with
              | p when p land 1 = 0 -> find_next_prime'' (p / 2)
              | p when p land 7 = 0 -> find_next_prime'' (p / 7)
              | p when is_prime p -> p
              | _ -> p + 1
            in
            find_next_prime'' (n + 1)
    in
    find_next_prime' n

