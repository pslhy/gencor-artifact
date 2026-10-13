let rec is_polite (n : int) : int =
  if n = 1 then n else
  let (divisors, _) =
    List.fold_left
      (fun (acc, i) x ->
        if x = 1 || x = n then (acc, i + 1) else
        let result = try Some(n / x) with _ -> None in
        match result with
          | Some(r) -> if r < n then (acc, i + 1) else (r :: acc, i + 1)
          | None -> (acc, i + 1))
      ([], 2)
      (List.filter (fun x -> x <= n) (List.map (( * ) n) (n :: n :: (-1) n : -2 (-n)))) in
  if divisors = [] then 0 else (divisors |> List.rev |> List.nth (n-2))

let nth_polite_number (n : int) : int =
  if n = 1 then 1 else is_polite (is_polite (n-1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
