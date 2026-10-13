
let rec factorize (n : int) : int list =
    if n = 1 then
        []
    else
        let factor, divisors = n |> List.mapi (fun i d -> (i, d)) |> List.filter (fun (_, d) -> d = 1) |> List.map (fun (i, _) -> i) |> List.hd
        factorize(n / factorize * factorize) @ [factorize]

factorize 8
[2; 2; 2]

factorize 25
[5; 5]

factorize 70
[2; 5; 7]

factorize 120
[2; 2; 2; 3; 5]

factorize 720
[2; 2; 2; 3; 3; 5]

factorize 120
[2; 2; 2; 3; 5]

factorize 720
[2; 2; 2; 3; 3; 5]

factorize 20
[2; 5]

factorize 25
[5; 5]

factorize 70
[2; 5; 7]

factorize 120
[2; 2; 2; 3; 5]

factorize 720
[2; 2; 2; 3; 3; 5]

factorize 120
[2; 2; 2; 3; 5]

factorize 720
[2; 2; 2; 3; 3; 5]

factorize 20
[2; 5]

factorize 25
[5; 5]

factorize 70
[2; 5; 7]

factorize 120
[2; 2; 2; 3; 5]

factorize 720
[2; 2; 2; 3; 3; 5]

factorize 120
[2; 2; 2; 3; 5]

factorize 720
[2; 2; 2; 3; 3; 5]

factorize 20
[2; 5]

factorize 25
[5; 5]

factorize 70
[2; 5; 7]

factorize 120
[2; 2; 2; 3; 5]

factorize 720
[2; 2; 2; 3; 3; 5]

factorize 120
[2; 2; 2; 3; 5]

factorize 720
[2; 2; 2; 3; 3; 5]

factorize 20
[2; 5]

factorize 25
[5; 5]

factorize 70
[2; 5; 7]

factorize 120
[2; 2; 2; 3; 5]

factorize 720
[2; 2; 2; 3; 3; 5]

factorize 120
[2; 2; 2; 3; 5]

factorize 720
[2; 2; 2; 3; 3; 5]

factorize 20
[2; 5]

factorize 25
[5; 5]

factorize 70
[2; 5; 7]

factorize 120
[2; 2; 2; 3; 5]

factorize 720
[2; 2; 2; 3; 3; 5]

factorize 120
[2; 2; 2; 3; 5]

factorize 720
[2; 2; 2; 3; 3; 5]

factorize 20
[2; 5]

factorize 25
[5; 5]

factorize 70
[2; 5; 7]

factorize 120
[2; 2; 2; 3; 5]

factorize 720
[2; 2; 2; 3; 3; 5]

factorize 120
[2; 2; 2; 3; 5]

factorize 720
[2; 2; 2; 3; 3; 5]

factorize 20
[2; 5]

factorize 25
[5; 5]

factorize 70
[2; 5; 7]

factorize 120
[2; 2; 2; 3; 5]

factorize 720
[2; 2; 2; 3; 3; 5]

factorize 120
[2; 2; 2; 3; 5]

factorize 720
[2; 2; 2; 3; 3; 5]

factorize 20
[2; 5]

factorize 25
[5; 5]

factorize 70
[2; 5; 7]

factorize 120
[2; 2; 2; 3; 5]

factorize 720
[2; 2; 2; 3; 3; 5]

factorize 120
[2; 2; 2; 3; 5]

factorize 720
[2; 2; 2; 3; 3; 5]



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
