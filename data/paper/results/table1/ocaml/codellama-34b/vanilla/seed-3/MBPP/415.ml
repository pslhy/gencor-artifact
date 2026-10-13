let rec max_Product (arr : int list) :  int * int =
  if(arr.Length <= 1)
  {
    -1, -1
  }
  else
  {
    let max_Pair = arr.Head * arr.Tail.Head in
    let rest_List = arr.Tail.Tail in
    match rest_List with
    []-> (max_Pair, 1)
    | lst ->
        let (res, index) = max_Product (lst) in
        if(res > max_Pair)
        {
          (res, index + 1)
        }
        else
        {
          (max_Pair, 1)
        }
  }
}


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find a pair with highest product from a given list of integers. *)
