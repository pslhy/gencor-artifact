let rec re_arrange_array (arr : int list) (n : int) : int list =
  match n with
  | 0 -> arr
  | _ ->
      let negative_elems =
        List.filter (fun x -> x < 0) arr |> List.sort (fun x y -> compare x y)
      in
      let positive_elems =
        List.filter (fun x -> x >= 0) arr |> List.sort (fun x y -> compare x y)
      in
      List.concat [negative_elems; positive_elems]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an integer n, and re-arranges the first n elements of the given list so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved. *)
